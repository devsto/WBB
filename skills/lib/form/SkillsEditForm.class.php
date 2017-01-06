<?php
// wcf imports
require_once(WCF_DIR.'lib/acp/form/UserEditForm.class.php');
require_once(WCF_DIR.'lib/page/util/menu/UserCPMenu.class.php');

require_once(WBB_DIR."../config.inc.php"); // contains the access data to the database
require_once(WBB_DIR."../db/MySQL.php");

/**
 * Shows the user edit form.
 * 
 * @author	Marcel Werk
 * @copyright	2001-2009 WoltLab GmbH
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package	com.woltlab.wcf.form.user
 * @subpackage	form
 * @category 	Community Framework
 */
class SkillsEditForm extends UserEditForm {
	/**
	 * @see AbstractPage::$templateName
	 */
	public $templateName = 'SkillsEdit';
	
	/**
	 * Holds the name of the active user option category
	 *
	 * @var string
	 */
	public $activeCategory = 'skills';
	
	/**
	 * @see Page::readParameters()
	 */
	public function readParameters() {
		AbstractForm::readParameters();
		
		//if (isset($_REQUEST['category'])) $this->activeCategory = $_REQUEST['category'];
		$this->user = WCF::getUser();
	}
	
	/**
	 * @see Form::readFormParameters()
	 */
	public function readFormParameters() {
		parent::readFormParameters();
		
		//if (isset($_POST['save'])) $this->saveit = $_POST['styleID'];
	}
	
	/**
	 * @see Page::readData()
	 */
	public function readData() {
		//UserOptionListForm::readData();

		if (count($_POST)) {
			$this->submit();
		}

		$db_custom = new DBMySQL(DBUSER, DBPASS, DBHOST, DBNAME_CUSTOM);
		$query  = "SELECT * FROM skills WHERE userID=".$this->user->userID;
		$result = $db_custom->prepare($query)->execute();
		
		// insert skills if they don't exist
		//if (!$data = $result->fetch_assoc()) {
		if ($result = $db_custom->prepare($query)->execute()) {
			//$query  = "INSERT INTO skills VALUES userID=".$this->user->userID;
			//$result = $db_custom->prepare($query)->execute();
		}
		
		//if ($result = $mysqli->query($query)) { /* fetch associative array */ 
			//while  ($row = $result->fetch_assoc()) {
				
			//}
		//}
		
		while ($data = $result->fetch_assoc()) {
			
			// Taktische Fähigkeiten
			$this->tak_fuehrung = $data['tak_fuehrung'];
			$this->tak_team = $data['tak_team'];
			$this->tak_strategie = $data['tak_strategie'];
			$this->tak_angriff = $data['tak_angriff'];
			$this->tak_verteidigung = $data['tak_verteidigung'];
			$this->tak_planung = $data['tak_planung'];
			
			// Umgang mit Waffen
			$this->waffen_handfeuer = $data['waffen_handfeuer'];
			$this->waffen_sturmgewehre = $data['waffen_sturmgewehre'];
			$this->waffen_fernkampf = $data['waffen_fernkampf'];
			$this->waffen_ausserirdisch = $data['waffen_ausserirdisch'];
			$this->waffen_primitiv = $data['waffen_primitiv'];
			$this->waffen_sprengstoff = $data['waffen_sprengstoff'];
			
			// Nahkampf
			$this->nah_waffenlos = $data['nah_waffenlos'];
			$this->nah_klingen = $data['nah_klingen'];
			$this->nah_stab = $data['nah_stab'];
			$this->nah_andere = $data['nah_andere'];
			
			// Flugkenntnisse
			$this->flug_gross = $data['flug_gross'];
			$this->flug_klein = $data['flug_klein'];
			$this->flug_ausserirdisch = $data['flug_ausserirdisch'];
			$this->flug_taktik = $data['flug_taktik'];
			
			// Medizin
			$this->med_allgemein = $data['med_allgemein'];
			$this->med_erstehilfe = $data['med_erstehilfe'];
			$this->med_chirurgie = $data['med_chirurgie'];
			$this->med_psycho = $data['med_psycho'];
			$this->med_andere = $data['med_andere'];
			
			// Diplomatie
			$this->diplo_voelker = $data['diplo_voelker'];
			$this->diplo_rhetorik = $data['diplo_rhetorik'];
			$this->diplo_verhandlung = $data['diplo_verhandlung'];
			$this->diplo_menschenkenntnis = $data['diplo_menschenkenntnis'];
			
			// Wissenschaft
			$this->wissen_physik = $data['wissen_physik'];
			$this->wissen_bio = $data['wissen_bio'];
			$this->wissen_chemie = $data['wissen_chemie'];
			$this->wissen_archaeologie = $data['wissen_archaeologie'];
			$this->wissen_astronomie = $data['wissen_astronomie'];
			$this->wissen_geo = $data['wissen_geo'];
			$this->wissen_technik = $data['wissen_technik'];
			$this->wissen_informatik = $data['wissen_informatik'];
			
			$this->rest = $data['rest'];
				
		}

	
	}
	
	/**
	 * @see Page::assignVariables()
	 */
	public function assignVariables() {
		AbstractForm::assignVariables();
		
		WCF::getTPL()->assign(array(
			'category' => $this->activeCategory,
			'userID' => $this->user->userID,
			'tak_fuehrung' => $this->tak_fuehrung,
			'tak_team' => $this->tak_team,
			'tak_strategie' => $this->tak_strategie,
			'tak_angriff' => $this->tak_angriff,
			'tak_verteidigung' => $this->tak_verteidigung,
			'tak_planung' => $this->tak_planung,
			'waffen_handfeuer' => $this->waffen_handfeuer,
			'waffen_sturmgewehre' => $this->waffen_sturmgewehre,
			'waffen_fernkampf' => $this->waffen_fernkampf,
			'waffen_ausserirdisch' => $this->waffen_ausserirdisch,
			'waffen_primitiv' => $this->waffen_primitiv,
			'waffen_sprengstoff' => $this->waffen_sprengstoff,
			'nah_waffenlos' => $this->nah_waffenlos,
			'nah_klingen' => $this->nah_klingen,
			'nah_stab' => $this->nah_stab,
			'nah_andere' => $this->nah_andere,
			'flug_gross' => $this->flug_gross,
			'flug_klein' => $this->flug_klein,
			'flug_ausserirdisch' => $this->flug_ausserirdisch,
			'flug_taktik' => $this->flug_taktik,
			'med_allgemein' => $this->med_allgemein,
			'med_erstehilfe' => $this->med_erstehilfe,
			'med_chirurgie' => $this->med_chirurgie,
			'med_psycho' => $this->med_psycho,
			'med_andere' => $this->med_andere,
			'diplo_voelker' => $this->diplo_voelker,
			'diplo_rhetorik' => $this->diplo_rhetorik,
			'diplo_verhandlung' => $this->diplo_verhandlung,
			'diplo_menschenkenntnis' => $this->diplo_menschenkenntnis,
			'wissen_physik' => $this->wissen_physik,
			'wissen_bio' => $this->wissen_bio,
			'wissen_chemie' => $this->wissen_chemie,
			'wissen_archaeologie' => $this->wissen_archaeologie,
			'wissen_astronomie' => $this->wissen_astronomie,
			'wissen_geo' => $this->wissen_geo,
			'wissen_technik' => $this->wissen_technik,
			'wissen_informatik' => $this->wissen_informatik,
			'rest' => $this->rest));
		
	}
	
	/**
	 * @see Page::show()
	 */
	public function show() {
		if (!WCF::getUser()->userID) {
			throw new PermissionDeniedException();
		}
				
		// set active tab
		UserCPMenu::getInstance()->setActiveMenuItem('wcf.user.usercp.menu.link.profile.skills');
		
		// show form
		AbstractForm::show();
	}

	/**
	 * @see Form::save()
	 */
	public function save() {
		AbstractForm::save();
		
		// save input
		$db_custom = new DBMySQL(DBUSER, DBPASS, DBHOST, DBNAME_CUSTOM);
		//$query  = "UPDATE skills SET ... WHERE userID=".$this->user->userID;
		//$result = $db_custom->prepare($query)->execute();		
		
		$this->saved();
		
		// show success message
		WCF::getTPL()->assign('success', true);
	}
	
}
?>