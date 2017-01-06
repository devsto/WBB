<?php
require_once(WCF_DIR.'lib/system/event/EventListener.class.php');

/**
 * Displays Thanks in the Userprofile
 *
 * @author	Bluster
 * @package	de.wbb3mods.wbb.thankbot
 */
class UserPageThankBotListener implements EventListener {
	/**
	 * @see EventListener::execute()
	 */
	public function execute($eventObj, $className, $eventName) {
		if ($eventName == 'init') {
			$eventObj->sqlSelects .= 'wbb_user.thanks_got,wbb_user.thanks_given,';
		}
		elseif ($eventName == 'assignVariables' && THANKS_SHOWCOUNT && ($eventObj->frame->getUser()->thanks_got > 0 || (THANKS_SHOWCOUNT == 2 && $eventObj->frame->getUser()->thanks_given > 0))) {
  	  $eventObj->generalInformation[] = array(
				'icon' => StyleManager::getStyle()->getIconPath('thankM.png'),
        'title' => WCF::getLanguage()->get('wbb.thread.post.credits.thank'),
        'value' => $eventObj->frame->getUser()->thanks_got.(THANKS_SHOWCOUNT == 2 ? ' / '.$eventObj->frame->getUser()->thanks_given.($eventObj->frame->getUser()->thanks_given > 0 ? ' ('.round($eventObj->frame->getUser()->thanks_got*100/$eventObj->frame->getUser()->thanks_given).'%)' : '') : '')
      );
		}
	}
}
?>