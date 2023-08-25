package options;

class TanksSubState extends BaseOptionsMenu
{
	
	public function new()
	{
		title = 'Tanks';
		rpcTitle = 'Custom Settings Menu'; //for Discord Rich Presence

        var iconBopStyle:Array<String> = ["Vanilla", "DnB"];
        if (iconBopStyle.length > 0)
            {
                if(!iconBopStyle.contains(ClientPrefs.data.iconBop))
                    ClientPrefs.data.iconBop = ClientPrefs.defaultData.iconBop; //Reset to default if saved splashskin couldnt be found

                iconBopStyle.insert(0, ClientPrefs.defaultData.iconBop); //Default skin always comes first
                var option:Option = new Option('Icon Bopping Style:', //Name
                    'Choose how do you want the icons in the healthbar move when a beat is hit', //Description
                    'iconBop', //Save data variable name
                    'string',
                    iconBopStyle); //Variable type
                addOption(option);
            }


		super();
	}

	override function changeSelection(change:Int = 0)
	{
		super.changeSelection(change);
	}
}