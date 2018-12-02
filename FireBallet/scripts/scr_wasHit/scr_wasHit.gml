//Actor hit
wasHit = 3
scr_knockback(other.knockback)

if (object_is_ancestor(object_index,obj_Enemy)){
	//Enemy hit
	hp -= random_range(other.minDmg, other.maxDmg)
	target = other.sender
	if (hp <= 0) scr_enemyKilled()
} else {
	//Player hit
	if (!god) hp -= random_range(other.minDmg, other.maxDmg)
	if (hp <= 0) scr_playerKilled()
}