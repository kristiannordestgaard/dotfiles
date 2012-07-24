<?php

foreach (glob("images/{*.png,*.jpg,*.gif}", GLOB_BRACE) as $image)
	echo '<img src="'.$image.'" />';