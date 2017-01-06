{include file="documentHeader"}
<head>
	<title>{lang}wcf.user.option.category.{$category}{/lang} - {lang}wcf.user.usercp{/lang} - {lang}{PAGE_TITLE}{/lang}</title>
	{include file='headInclude' sandbox=false}
</head>
<body{if $templateName|isset} id="tpl{$templateName|ucfirst}"{/if}>
{include file='header' sandbox=false}

<script type="text/javascript">
//<![CDATA[

/* -------------------------------------------------------------------------------------- * 
 *  Copyright 2007 by Pia Storck                                                          *
 *  Stargaters, das Rollenspiel und Diskussionsforum                                      *
 *                                                                                        *
 *  http://www.stargaters.de                                  E-Mail: info@stargaters.de  *
 * -------------------------------------------------------------------------------------- */

		function add(id) {
			
			// 01 - 10 Punkte: 1 EP zur Steigerung
			if (document.getElementById(40).value > 0 && 
				document.getElementById(id).value >= 0 && 
				document.getElementById(id).value < 10) {
				
				document.getElementById(40).value = parseInt(document.getElementById(40).value) - 1;
				
				document.getElementById(id).value  = parseInt(document.getElementById(id).value) + 1;
			
			// 11 - 20 Punkte: 3 EPs zur Steigerung
			} else if (document.getElementById(40).value >= 3 && 
			document.getElementById(id).value >= 10 && 
			document.getElementById(id).value < 20) {
			
				document.getElementById(40).value = parseInt(document.getElementById(40).value) - 3;
				
				document.getElementById(id).value  = parseInt(document.getElementById(id).value) + 1;
				
			// 21 - 30 Punkte: 5 EPs zur Steigerung
			} else if (document.getElementById(40).value >= 5 && 
			document.getElementById(id).value >= 20 && 
			document.getElementById(id).value < 30) {
		
				document.getElementById(40).value = parseInt(document.getElementById(40).value) - 5;
				
				document.getElementById(id).value  = parseInt(document.getElementById(id).value) + 1;
			
			} else if (document.getElementById(id).value == 30) {
		
			alert("Dieser Skill kann nicht mehr gesteigert werden!");
			 
			} else {
		
				alert("Es stehen nicht genügend Erfahrungspunkte zur Verfügung!");
			}	
			
		}
		
//]]>
</script>



<div id="main">
	

	{capture append=userMessages}
		{if $errorField}
			<p class="error">{lang}wcf.global.form.error{/lang}</p>
		{/if}
		
		{if $success|isset}
			<p class="success">{lang}wcf.user.edit.success{/lang}</p>
		{/if}
	{/capture}
	
	{include file="userCPHeader"}
	
	<form method="post" action="index.php?form=SkillsEdit">
		<div class="border tabMenuContent">
			<div class="container-1">
				<h3 class="subHeadline">{lang}wcf.user.usercp.menu.link.profile.skills{/lang}</h3>

                <table width=100% border=0 cellspacing=0 cellpadding=5>
                  <tr>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.tak_title{/lang}</strong></td>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.waffen_title{/lang}</strong></td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_fuehrung{/lang}</td>
                    <td width=100>
                        <input name=1 type=text id=1 value="{$tak_fuehrung}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(1)">
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_handfeuer{/lang}</td>
                    <td width=100>
                        <input name=7 type=text id=7 value="{$waffen_handfeuer}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(7)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_team{/lang}</td>
                    <td width=100>
                        <input name=2 type=text id=2 value="{$tak_team}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(2)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_sturmgewehre{/lang}</td>
                    <td width=100>
                        <input name=8 type=text id=8 value="{$waffen_sturmgewehre}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(8)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_strategie{/lang}</td>
                    <td width=100>
                        <input name=3 type=text id=3 value="{$tak_strategie}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(3)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_fernkampf{/lang}</td>
                    <td width=100>
                        <input name=9 type=text id=9 value="{$waffen_fernkampf}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(9)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_angriff{/lang}</td>
                    <td width=100>
                        <input name=4 type=text id=4 value="{$tak_angriff}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(4)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_ausserirdisch{/lang}</td>
                    <td width=100>
                        <input name=10 type=text id=10 value="{$waffen_ausserirdisch}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(10)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_verteidigung{/lang}</td>
                    <td width=100>
                        <input name=5 type=text id=5 value="{$tak_verteidigung}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(5)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_primitiv{/lang}</td>
                    <td width=100>
                        <input name=11 type=text id=11 value="{$waffen_primitiv}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(11)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.tak_planung{/lang}</td>
                    <td width=100>
                        <input name=6 type=text id=6 value="{$tak_planung}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(6)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.waffen_sprengstoff{/lang}</td>
                    <td width=100>
                        <input name=12 type=text id=12 value="{$waffen_sprengstoff}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(12)">	
                    </td>
                  </tr>
                  <tr>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.nah_title{/lang}</strong></td>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.flug_title{/lang}</strong></td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.nah_waffenlos{/lang}</td>
                    <td>
                        <input name=13 type=text id=13 value="{$nah_waffenlos}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(13)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.flug_gross{/lang}</td>
                    <td>
                        <input name=17 type=text id=17 value="{$flug_gross}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(17)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.nah_klingen{/lang}</td>
                    <td>
                        <input name=14 type=text id=14 value="{$nah_klingen}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(14)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.flug_klein{/lang}</td>
                    <td>
                        <input name=18 type=text id=18 value="{$flug_klein}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(18)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.nah_stab{/lang}</td>
                    <td>
                        <input name=15 type=text id=15 value="{$nah_stab}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(15)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.flug_ausserirdisch{/lang}</td>
                    <td>
                        <input name=19 type=text id=19 value="{$flug_ausserirdisch}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(19)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.nah_andere{/lang}</td>
                    <td>
                        <input name=16 type=text id=16 value="{$nah_andere}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(16)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.flug_taktik{/lang}</td>
                    <td>
                        <input name=20 type=text id=20 value="{$flug_taktik}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(20)">	
                    </td>
                  </tr>
                  <tr>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.med_title{/lang}</strong></td>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.wissen_title{/lang}</strong></td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.med_allgemein{/lang}</td>
                    <td>
                        <input name=21 type=text id=21 value="{$med_allgemein}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(21)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_physik{/lang}</td>
                    <td>
                        <input name=30 type=text id=30 value="{$wissen_physik}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(30)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.med_erstehilfe{/lang}</td>
                    <td>
                        <input name=22 type=text id=22 value="{$med_erstehilfe}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(22)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_bio{/lang}</td>
                    <td>
                        <input name=31 type=text id=31 value="{$wissen_bio}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(31)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.med_chirurgie{/lang}</td>
                    <td>
                        <input name=23 type=text id=23 value="{$med_chirurgie}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(23)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_chemie{/lang}</td>
                    <td>
                        <input name=32 type=text id=32 value="{$wissen_chemie}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(32)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.med_psycho{/lang}</td>
                    <td>
                        <input name=24 type=text id=24 value="{$med_psycho}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(24)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_archaeologie{/lang}</td>
                    <td>
                        <input name=33 type=text id=33 value="{$wissen_archaeologie}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(33)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.med_andere{/lang}</td>
                    <td>
                        <input name=25 type=text id=25 value="{$med_andere}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(25)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_astronomie{/lang}</td>
                    <td>
                        <input name=34 type=text id=34 value="{$wissen_astronomie}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(34)">	
                    </td>
                  </tr>
                  <tr>
                    <td colspan=2 bgcolor="#C0C2CB"><strong>{lang}wcf.user.profile.menu.link.profile.skills.diplo_title{/lang}</strong></td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_geo{/lang}</td>
                    <td>
                        <input name=35 type=text id=35 value="{$wissen_geo}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(35)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_voelker{/lang}</td>
                    <td>
                        <input name=26 type=text id=26 value="{$diplo_voelker}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(26)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_technik{/lang}</td>
                    <td>
                        <input name=36 type=text id=36 value="{$wissen_technik}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(36)">	
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_rhetorik{/lang}</td>
                    <td>
                        <input name=27 type=text id=27 value="{$diplo_rhetorik}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(27)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.wissen_informatik{/lang}</td>
                    <td>
                        <input name=37 type=text id=37 value="{$wissen_informatik}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(37)">
                    </td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_verhandlung{/lang}</td>
                    <td>
                        <input name=28 type=text id=28 value="{$diplo_verhandlung}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(28)">	
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.diplo_menschenkenntnis{/lang}</td>
                    <td>
                        <input name=29 type=text id=29 value="{$diplo_menschenkenntnis}" size=2 maxlength=10 disabled=disabled>
                        <input type=button value="+" onClick="add(29)">	
                    </td>
                    <td>{lang}wcf.user.profile.menu.link.profile.skills.rest{/lang}:</td>
                    <td>
                        <input name=40 type=text id=40 value="{$rest}" size=2 maxlength=10 disabled=disabled>
                    </td>
                  </tr>
                </table>			

		

			</div>
		</div>
        

		<div class="formSubmit">
        
			<input type="submit" accesskey="s" value="{lang}wcf.global.button.submit{/lang}" />
			<input type="reset" accesskey="r" value="{lang}wcf.global.button.reset{/lang}" />
		</div>
	</form>

</div>

{include file='footer' sandbox=false}
</body>
</html>