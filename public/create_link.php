<?php
$target = __DIR__ . '/storage/app/public';
$link = __DIR__ . '/public/storage';

if (symlink($target, $link)) {
    echo 'Symbolic link created successfully.';
} else {
    echo 'Failed to create symbolic link.';
}

?>
