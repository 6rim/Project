if noclip = true { } //do nothing
else
if noclip = false { current_hp -= oEnemyProjectile.projectile_damage; instance_destroy(other); }