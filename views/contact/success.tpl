<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?php echo $title; ?></title>
    </head>
    <body>
	
		<?php include HOME . DS .  'includes' . DS . 'menu.inc.php'; ?>
		
		<h1><?php echo $title; ?></h1>
		<h2>Data stored:</h2>
		
		<?php if (!empty($userData['firstName'])): ?>
			<h3>First Name:</h3>
			<p><?php echo $userData['firstName']; ?></p>
		<?php endif;?>
		
		<?php if (!empty($userData['lastName'])): ?>
			<h3>Last Name:</h3>
			<p><?php echo $userData['lastName']; ?></p>
		<?php endif;?>
		
		<h3>E-mail:</h3>
		<p><?php echo $userData['email']; ?></p>
		
		<h3>Message:</h3>
		<?php echo $userData['message']; ?>
		
    </body>
</html>