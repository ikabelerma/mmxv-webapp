package mmxv.webapp

class TeamAward extends Award{
	TeamNomination nomination
	static belongsTo = [nominee : Team]
	
    static constraints = {
    }
}
