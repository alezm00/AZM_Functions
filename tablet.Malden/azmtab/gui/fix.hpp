class HOME {
   idd = 6660;
   name = "HOME";
   movingenable = false;
   enablesimulation = true;
   onload = "hint 'Created by alezm'";
   class controls
   {
       class backhome : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\tabma.paa";
           x = 0.0526041666666667 * safezoneW + safezoneX;
           y = 0.0827409931840312 * safezoneH + safezoneY;
           w = 0.377083333333333 * safezoneW;
           h = 0.75562317429406 * safezoneH;
       };
       class home : HiddenButton
       {
           x = 0.230851333333334 * safezoneW + safezoneX;
           y = 0.752543898734177 * safezoneH + safezoneY;
           w = 0.0222736666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1001;
           tooltip = "Created by Alezm";
       };
       class radio : HiddenButton
       {
           x = 0.2125 * safezoneW + safezoneX;
           y = 0.458617332035054 * safezoneH + safezoneY;
           w = 0.059375 * safezoneW;
           h = 0.166504381694255 * safezoneH;
           idc = 1002;
           action = "[] call azm_radiogui_open";
           tooltip = "Imposta frequenze radio";
       };
       class equip : HiddenButton
       {
           x = 0.202083333333333 * safezoneW + safezoneX;
           y = 0.177215189873418 * safezoneH + safezoneY;
           w = 0.0807291666666667 * safezoneW;
           h = 0.138266796494645 * safezoneH;
           idc = 1003;
           tooltip = "Cambia equipaggiamento";
       };
   };
};

class RADIO {
   idd = 6661;
   name = "RADIO";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class backhome : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\radio.paa";
           x = 0.0526041666666667 * safezoneW + safezoneX;
           y = 0.0827409931840312 * safezoneH + safezoneY;
           w = 0.377083333333333 * safezoneW;
           h = 0.75562317429406 * safezoneH;
       };
       class home : HiddenButton
       {
           x = 0.230851333333334 * safezoneW + safezoneX;
           y = 0.752543898734177 * safezoneH + safezoneY;
           w = 0.0222736666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1001;
           tooltip = "Home";
           action = "[] call azm_radioclode";
       };
       class LRadio : HiddenButton
       {
           x = 0.1859375 * safezoneW + safezoneX;
           y = 0.462512171372931 * safezoneH + safezoneY;
           w = 0.116145833333333 * safezoneW;
           h = 0.238558909444985 * safezoneH;
           idc = 1002;
           action = "[] spawn azm_lradio_freqset";
           tooltip = "Frequenze Long Range";
       };
       class SRadio : HiddenButton
       {
           x = 0.185416666666667 * safezoneW + safezoneX;
           y = 0.177215189873418 * safezoneH + safezoneY;
           w = 0.116145833333333 * safezoneW;
           h = 0.233690360272638 * safezoneH;
           idc = 1003;
           tooltip = "Frequenze Short Range";
           action = "[] spawn azm_sradio_freqset";
       };
   };
};