{include file='documentHeader'}
<head>
<title>Skills von {$user->username} - {PAGE_TITLE}</title>
{include file='headInclude' sandbox=false}
</head>
<body>
{include file='header' sandbox=false}
<div id="main">
	{include file="userProfileHeader"}


    <div class="border {if $this|method_exists:'getUserProfileMenu' && $this->getUserProfileMenu()->getMenuItems('')|count > 1}tabMenuContent{else}content{/if}">
        <div class="container-1 profileDisplay">
            <div class="userProfileBox">
  
  	<h3 class="subHeadline">Skills</h3>
    
    {if $view_skills == 0}<p>{$user->username} hat noch keine Skills eingetragen oder diese deaktiviert.</p>{else}
    
	<table width=100% border=0 cellspacing=0 cellpadding=5>
	  <tr>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.tak_title{/lang}</strong></td>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.waffen_title{/lang}</strong></td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_fuehrung{/lang}</td>
		<td width="60">{$tak_fuehrung}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_handfeuer{/lang}</td>
		<td>{$waffen_handfeuer}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_team{/lang}</td>
		<td>{$tak_team}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_sturmgewehre{/lang}</td>
		<td>{$waffen_sturmgewehre}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_strategie{/lang}</td>
		<td>{$tak_strategie}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_fernkampf{/lang}</td>
		<td>{$waffen_fernkampf}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_angriff{/lang}</td>
		<td>{$tak_angriff}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_ausserirdisch{/lang}</td>
		<td>{$waffen_ausserirdisch}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_verteidigung{/lang}</td>
		<td>{$tak_verteidigung}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_primitiv{/lang}</td>
		<td>{$waffen_primitiv}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.tak_planung{/lang}</td>
		<td>{$tak_planung}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_sprengstoff{/lang}</td>
		<td>{$waffen_sprengstoff}</td>
	  </tr>
	  <tr>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.nah_title{/lang}</strong></td>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.flug_title{/lang}</strong></td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.nah_waffenlos{/lang}</td>
		<td>{$nah_waffenlos}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.flug_gross{/lang}</td>
		<td>{$flug_gross}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.nah_klingen{/lang}</td>
		<td>{$nah_klingen}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.flug_klein{/lang}</td>
		<td>{$flug_klein}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.nah_stab{/lang}</td>
		<td>{$nah_stab}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.flug_ausserirdisch{/lang}</td>
		<td>{$flug_ausserirdisch}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.nah_andere{/lang}</td>
		<td>{$nah_andere}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.flug_taktik{/lang}</td>
		<td>{$flug_taktik}</td>
	  </tr>
	  <tr>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.med_title{/lang}</strong></td>
		<td colspan=2><strong>{lang}wcf.user.profile.menu.link.profile.skills.wissen_title{/lang}</strong></td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.med_allgemein{/lang}</td>
		<td>{$med_allgemein}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_physik{/lang}</td>
		<td>{$wissen_physik}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.med_erstehilfe{/lang}</td>
		<td>{$med_erstehilfe}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_bio{/lang}</td>
		<td>{$wissen_bio}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.med_chirurgie{/lang}</td>
		<td>{$med_chirurgie}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_chemie{/lang}</td>
		<td>{$wissen_chemie}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.med_psycho{/lang}</td>
		<td>{$med_psycho}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_archaeologie{/lang}</td>
		<td>{$wissen_archaeologie}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.med_andere{/lang}</td>
		<td>{$med_andere}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_astronomie{/lang}</td>
		<td>{$wissen_astronomie}</td>
	  </tr>
	  <tr>
		<td><strong>{lang}wcf.user.profile.menu.link.profile.skills.diplo_title{/lang}</strong></td>
		<td>&nbsp;</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_geo{/lang}</td>
		<td>{$wissen_geo}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_voelker{/lang}</td>
		<td>{$diplo_voelker}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_technik{/lang}</td>
		<td>{$wissen_technik}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_rhetorik{/lang}</td>
		<td>{$diplo_rhetorik}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_informatik{/lang}</td>
		<td>{$wissen_informatik}</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_verhandlung{/lang}</td>
		<td>{$diplo_verhandlung}</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_menschenkenntnis{/lang}</td>
		<td>{$diplo_menschenkenntnis}</td>
		<td>{lang}wcf.user.profile.menu.link.profile.skills.rest{/lang}</td>
		<td>{$rest}</td>
	  </tr>
	</table>

	{/if}

            </div>
        </div>      
    </div>


</div>

{include file='footer' sandbox=false}
</body>
</html>