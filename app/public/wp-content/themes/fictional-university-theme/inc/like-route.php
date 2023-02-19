<?php
add_action('rest_api_init', 'universityLikeRoutes');
function universityLikeRoutes() {
    register_rest_route('university/v1', 'manageLike',array(
        'methods' => 'POST',
        'callback' => 'createLike'
    ));

     register_rest_route('university/v1', 'manageLike',array(
        'methods' => 'DELETE',
        'callback' => 'deleteLike'
    ));
}

function createLike($data) {
    if(is_user_logged_in()) {
    $professor = sanitize_text_field($data['professorId']); 
    
    $existQuery = new WP_Query(array(
                'author' => get_current_user_id(),
                'post_type' => 'like',
                'meta_query' => array(
                  array(
                    'key' => 'liked_professor_id',
                    'compare' => '=',
                    'value' => $professor 
                  )
                )
              ));
    
    if($existQuery->found_posts == 0 && get_post_type($professor) == 'professor') {
        return wp_insert_post(
        array(
            'post_type' => 'like',
            'post_status' => 'publish',
            'post_title' => '2nd php test',
            'meta_input' => array(
                'liked_professor_id' => $professor
            )
        )
    );
    } else {
        wp_die("invalid profess id");
    }

    
    } else {
        wp_die("Only logged in users can like.");
    }
    
}

function deleteLike($data) {
    $likeID = sanitize_text_field($data['like']);
    if(get_current_user_id() == get_post_field('post_author', $likeID) && get_post_type($likeID) == 'like') {
        wp_delete_post($likeID, true);
        return "like deleted";
    } else {
        wp_die("you don't have persmission to delete that");
    }
}