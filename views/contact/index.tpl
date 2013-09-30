<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?php echo $title; ?></title>
    </head>
    <body>
	
		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>
		
		<h1><?php echo $title; ?></h1>
		
		<?php 
		if (isset($errors)) 
		{
			echo '<ul>';
			foreach ($errors as $e)
			{
				echo '<li>' . $e . '</li>';
			}
			echo '</ul>';
		} 
		
		if (isset($saveError))
		{
			echo "<h2>Error saving data. Please try again.</h2>" . $saveError;
		}
		?>
		
		<form action="/contact/save" method="post">
			
			<p>
				<label for="first_name">First Name:</label>
				<input value="<?php if(isset($formData)) echo $formData['first_name']; ?>" type="text" id="first_name" name="first_name" />
			</p>
			
			<p>
				<label for="last_name">Last Name:</label>
				<input value="<?php if(isset($formData)) echo $formData['last_name']; ?>" type="text" id="last_name" name="last_name" />
			</p>
			
			<p>
				<label for="email">* E-mail:</label>
				<input value="<?php if(isset($formData)) echo $formData['email']; ?>" type="text" id="email" name="email" />
			</p>
			
			<p>
				<label for="message">* Message:</label>
				<textarea name="message" id="message" rows="5" cols="50"><?php if(isset($formData)) echo $formData['message']; ?></textarea>
			</p>
			
			<input type="submit" name="contactFormSubmit" value="Send" />
		</form>
		
    </body>
</html>