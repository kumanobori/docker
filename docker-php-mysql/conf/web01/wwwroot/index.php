<?php
	$dsn = 'mysql:dbname=sampledb01;host=db01';
	$user = 'user';
	$password = 'userpass';

	$dbh = new PDO($dsn, $user, $password);
	$sql = 'select t01.id, t01.name, t02.name as region from m_prefecture t01 inner join m_region t02 on t02.id = t01.region_id order by t01.id';
	$result = $dbh->query($sql);
	
	$timestamp = date("Y-m-d H:i:s");
?>
<html><head></head><body>
	<p><?php echo $timestamp; ?></p>
	<table>
		<tr><th>id</th><th>name</th><th>region</th></tr>
		<?php while($record = $result->fetch(PDO::FETCH_ASSOC)): ?>
			<tr>
				<td><?php echo $record['id'];?></td>
				<td><?php echo $record['name'];?></td>
				<td><?php echo $record['region'];?></td>
			</tr>
		<?php endwhile; ?>
	</table>
</body></html>
