//
//  dataModule.m
//  Project
//
//  Created by Rick on 2017/11/27.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "dataModule.h"
@implementation dataModule

-(instancetype)init{
    self=[super init];
    if (self) {
        self.egg=[NSMutableArray array];
        
        FoodModule* boiledEgg=[[FoodModule alloc] init];
        boiledEgg.foodName=@"Boiled egg";
        boiledEgg.unit=@"100g";
        boiledEgg.cal=144;
        
        FoodModule* friedEgg=[[FoodModule alloc] init];
        friedEgg.foodName=@"Fried egg";
        friedEgg.unit=@"100g";
        friedEgg.cal=200;
        
        FoodModule* preservedEgg=[[FoodModule alloc] init];
        preservedEgg.foodName=@"preserved egg";
        preservedEgg.unit=@"100g";
        preservedEgg.cal=178;
        
        FoodModule* spicedCornedEgg=[[FoodModule alloc] init];
        spicedCornedEgg.foodName=@"Spiced corned egg";
        spicedCornedEgg.unit=@"100g";
        spicedCornedEgg.cal=156;
        
        FoodModule* eggsBenedict=[[FoodModule alloc] init];
        eggsBenedict.foodName=@"Eggs benedict";
        eggsBenedict.unit=@"100g";
        eggsBenedict.cal=460;
        
        FoodModule* scrambledEggs=[[FoodModule alloc] init];
        scrambledEggs.foodName=@"Scrambled eggs";
        scrambledEggs.unit=@"100g";
        scrambledEggs.cal=195;
        
        [self.egg addObject:boiledEgg];
        [self.egg addObject:friedEgg];
        [self.egg addObject:preservedEgg];
        [self.egg addObject:spicedCornedEgg];
        [self.egg addObject:eggsBenedict];
        [self.egg addObject:scrambledEggs];
        
        self.bacon=[NSMutableArray array];
        
        FoodModule* grilledBaconRashers=[[FoodModule alloc] init];
        grilledBaconRashers.foodName=@"Grilled bacon rashers";
        grilledBaconRashers.unit=@"100g";
        grilledBaconRashers.cal=281;
        
        FoodModule* grilledBaconRashersWithFatTrimmed=[[FoodModule alloc] init];
        grilledBaconRashersWithFatTrimmed.foodName=@"Grilled bacon rashers with fat trimmed";
        grilledBaconRashersWithFatTrimmed.unit=@"100g";
        grilledBaconRashersWithFatTrimmed.cal=212;
        
        [self.bacon addObject:grilledBaconRashers];
        [self.bacon addObject:grilledBaconRashersWithFatTrimmed];
        
        self.differentTypesOfFlakes=[NSMutableArray array];
        
        FoodModule* branFlakes=[[FoodModule alloc] init];
        branFlakes.foodName=@"Bran flakes";
        branFlakes.unit=@"100g";
        branFlakes.cal=300;
        
        FoodModule* cornFlakes=[[FoodModule alloc] init];
        cornFlakes.foodName=@"Corn flakes";
        cornFlakes.unit=@"100g";
        cornFlakes.cal=371;
        
        FoodModule* cornFlakesWithCrunchyNut=[[FoodModule alloc] init];
        cornFlakesWithCrunchyNut.foodName=@"Corn flakes with crunchy nut";
        cornFlakesWithCrunchyNut.unit=@"100g";
        cornFlakesWithCrunchyNut.cal=391;
        
        FoodModule* porridgeOats=[[FoodModule alloc] init];
        porridgeOats.foodName=@"Porridge Oats";
        porridgeOats.unit=@"100g";
        porridgeOats.cal=376;
        
        [self.differentTypesOfFlakes addObject:branFlakes];
        [self.differentTypesOfFlakes addObject:cornFlakes];
        [self.differentTypesOfFlakes addObject:cornFlakesWithCrunchyNut];
        [self.differentTypesOfFlakes addObject:porridgeOats];
        
        self.sausages=[NSMutableArray array];
        
        FoodModule* grilledPorkSausage=[[FoodModule alloc] init];
        grilledPorkSausage.foodName=@"Grilled pork sausage";
        grilledPorkSausage.unit=@"100g";
        grilledPorkSausage.cal=291;
        
        FoodModule* grilledBeefSausage=[[FoodModule alloc] init];
        grilledBeefSausage.foodName=@"Grilled beef sausage";
        grilledBeefSausage.unit=@"100g";
        grilledBeefSausage.cal=259;
        
        FoodModule* grilledReducedFatPorkSausage=[[FoodModule alloc] init];
        grilledReducedFatPorkSausage.foodName=@"Grilled reduced fat pork sausage";
        grilledReducedFatPorkSausage.unit=@"100g";
        grilledReducedFatPorkSausage.cal=158;
        
        FoodModule* grilledChickenSausage=[[FoodModule alloc] init];
        grilledChickenSausage.foodName=@"Grilled chicken sausage";
        grilledChickenSausage.unit=@"100g";
        grilledChickenSausage.cal=187;
        
        [self.sausages addObject:grilledPorkSausage];
        [self.sausages addObject:grilledBeefSausage];
        [self.sausages addObject:grilledReducedFatPorkSausage];
        [self.sausages addObject:grilledChickenSausage];
        
        self.stapleFood=[NSMutableArray array];
        
        FoodModule* whiteToast=[[FoodModule alloc] init];
        whiteToast.foodName=@"White toast";
        whiteToast.unit=@"slice";
        whiteToast.cal=53;
        
        FoodModule* wholeMealToast=[[FoodModule alloc] init];
        wholeMealToast.foodName=@"Whole meal Toast";
        wholeMealToast.unit=@"slice";
        wholeMealToast.cal=58;
        
        FoodModule* garlicBread=[[FoodModule alloc] init];
        garlicBread.foodName=@"Garlic bread";
        garlicBread.unit=@"slice";
        garlicBread.cal=90;
        
        FoodModule* pittaBread=[[FoodModule alloc] init];
        pittaBread.foodName=@"Pitta bread";
        pittaBread.unit=@"slice";
        pittaBread.cal=63;
        
        [self.stapleFood addObject:whiteToast];
        [self.stapleFood addObject:wholeMealToast];
        [self.stapleFood addObject:garlicBread];
        [self.stapleFood addObject:pittaBread];
        
        //这里开始把每个不同种类的食物放到self.breakfast中
        
        GroupModule*egg=[[GroupModule alloc] init];
        egg.groupName=@"Egg";
        egg.group=self.egg;
        
        GroupModule* bacon=[[GroupModule alloc] init];
        bacon.groupName=@"Bacon";
        bacon.group=self.bacon;
        
        GroupModule* differentTypesOfFlakes=[[GroupModule alloc] init];
        differentTypesOfFlakes.groupName=@"Different types of flakes";
        differentTypesOfFlakes.group=self.differentTypesOfFlakes;
        
        GroupModule* sausages=[[GroupModule alloc] init];
        sausages.groupName=@"Sausages";
        sausages.group=self.sausages;
        
        GroupModule* stapleFood=[[GroupModule alloc] init];
        stapleFood.groupName=@"Staple food";
        stapleFood.group=self.stapleFood;
        
        self.breakfast=[NSMutableArray array];
        
        [self.breakfast addObject:egg];
        [self.breakfast addObject:bacon];
        [self.breakfast addObject:differentTypesOfFlakes];
        [self.breakfast addObject:sausages];
        [self.breakfast addObject:stapleFood];
        
        //这里开始添加lunch的食物
        self.salad=[NSMutableArray array];
        
        FoodModule* cucumber=[[FoodModule alloc] init];
        cucumber.foodName=@"Cucumber";
        cucumber.unit=@"slice";
        cucumber.cal=0;
        
        FoodModule* cherryTomatoes=[[FoodModule alloc] init];
        cherryTomatoes.foodName=@"Cherry tomatoes";
        cherryTomatoes.unit=@"each";
        cherryTomatoes.cal=3;
        
        FoodModule* lettuce=[[FoodModule alloc] init];
        lettuce.foodName=@"Lettuce";
        lettuce.unit=@"piece";
        lettuce.cal=2;
        
        FoodModule* celery=[[FoodModule alloc] init];
        celery.foodName=@"Celery";
        celery.unit=@"stick";
        celery.cal=0;
        
        FoodModule* redCabbage=[[FoodModule alloc] init];
        redCabbage.foodName=@"Red cabbage";
        redCabbage.unit=@"100g";
        redCabbage.cal=18;
        
        FoodModule* blackOlives=[[FoodModule alloc] init];
        blackOlives.foodName=@"Black olives";
        blackOlives.unit=@"100g";
        blackOlives.cal=130;
        
        FoodModule* pickledCucumber=[[FoodModule alloc] init];
        pickledCucumber.foodName=@"Pickled cucumber";
        pickledCucumber.unit=@"100g";
        pickledCucumber.cal=37.3;
        
        FoodModule* broccoli=[[FoodModule alloc] init];
        broccoli.foodName=@"Broccoli";
        broccoli.unit=@"100g";
        broccoli.cal=22;
        
        FoodModule* carrot=[[FoodModule alloc] init];
        carrot.foodName=@"Carrot";
        carrot.unit=@"100g";
        carrot.cal=25;
        
        FoodModule* onions=[[FoodModule alloc] init];
        onions.foodName=@"Onions";
        onions.unit=@"100g";
        onions.cal=34;
        
        FoodModule* peas=[[FoodModule alloc] init];
        peas.foodName=@"Peas";
        peas.unit=@"100g";
        peas.cal=59;
        
        FoodModule* redPeppers=[[FoodModule alloc] init];
        redPeppers.foodName=@"Red peppers";
        redPeppers.unit=@"100g";
        redPeppers.cal=26;
        
        FoodModule* oliveOil=[[FoodModule alloc] init];
        oliveOil.foodName=@"Olive oil";
        oliveOil.unit=@"tablespoon";
        oliveOil.cal=41;
        
        FoodModule* ketchup=[[FoodModule alloc] init];
        ketchup.foodName=@"Ketchup";
        ketchup.unit=@"tablespoon";
        ketchup.cal=11;
        
        FoodModule* mayo=[[FoodModule alloc] init];
        mayo.foodName=@"Mayo";
        mayo.unit=@"tablespoon";
        mayo.cal=48;
        
        FoodModule* thousandIslandSauces=[[FoodModule alloc] init];
        thousandIslandSauces.foodName=@"Thousand island sauces";
        thousandIslandSauces.unit=@"tablespoon";
        thousandIslandSauces.cal=38;
        
        FoodModule* vinaigrette=[[FoodModule alloc] init];
        vinaigrette.foodName=@"Vinaigrette";
        vinaigrette.unit=@"tablespoon";
        vinaigrette.cal=6;
        
        [self.salad addObject:cucumber];
        [self.salad addObject:cherryTomatoes];
        [self.salad addObject:lettuce];
        [self.salad addObject:celery];
        [self.salad addObject:redCabbage];
        [self.salad addObject:blackOlives];
        [self.salad addObject:pickledCucumber];
        [self.salad addObject:broccoli];
        [self.salad addObject:carrot];
        [self.salad addObject:onions];
        [self.salad addObject:peas];
        [self.salad addObject:redPeppers];
        [self.salad addObject:oliveOil];
        [self.salad addObject:ketchup];
        [self.salad addObject:mayo];
        [self.salad addObject:thousandIslandSauces];
        [self.salad addObject:vinaigrette];
        
        self.chicken=[NSMutableArray array];
        
        FoodModule* grilledChickenBreast=[[FoodModule alloc] init];
        grilledChickenBreast.foodName=@"Grilled chicken breast";
        grilledChickenBreast.unit=@"100g";
        grilledChickenBreast.cal=148;
        
        FoodModule* roastChickenBreast=[[FoodModule alloc] init];
        roastChickenBreast.foodName=@"Roast chicken breast";
        roastChickenBreast.unit=@"100g";
        roastChickenBreast.cal=70;
        
        FoodModule* chickenTikka=[[FoodModule alloc] init];
        chickenTikka.foodName=@"Chicken tikka";
        chickenTikka.unit=@"100g";
        chickenTikka.cal=179;
        
        FoodModule* chickenChowMein=[[FoodModule alloc] init];
        chickenChowMein.foodName=@"Chicken chow mein";
        chickenChowMein.unit=@"100g";
        chickenChowMein.cal=147;
        
        FoodModule* chickenSandwich=[[FoodModule alloc] init];
        chickenSandwich.foodName=@"Chicken sandwich";
        chickenSandwich.unit=@"100g";
        chickenSandwich.cal=388;
        
        FoodModule* bBQChickenWings=[[FoodModule alloc] init];
        bBQChickenWings.foodName=@"BBQ chicken wings";
        bBQChickenWings.unit=@"100g";
        bBQChickenWings.cal=116;
        
        FoodModule* friedChickenWings=[[FoodModule alloc] init];
        friedChickenWings.foodName=@"Fried chicken wings";
        friedChickenWings.unit=@"100g";
        friedChickenWings.cal=340;
        
        FoodModule* friedChickenLegs=[[FoodModule alloc] init];
        friedChickenLegs.foodName=@"Fried chicken legs";
        friedChickenLegs.unit=@"100g";
        friedChickenLegs.cal=261;
        
        FoodModule* chickenHamburger=[[FoodModule alloc] init];
        chickenHamburger.foodName=@"Chicken hamburger";
        chickenHamburger.unit=@"100g";
        chickenHamburger.cal=468;
        
        [self.chicken addObject:grilledChickenBreast];
        [self.chicken addObject:roastChickenBreast];
        [self.chicken addObject:chickenTikka];
        [self.chicken addObject:chickenChowMein];
        [self.chicken addObject:chickenSandwich];
        [self.chicken addObject:bBQChickenWings];
        [self.chicken addObject:friedChickenWings];
        [self.chicken addObject:friedChickenLegs];
        [self.chicken addObject:chickenHamburger];
        
        self.beef=[NSMutableArray array];
        
        FoodModule* friedBeefMince=[[FoodModule alloc] init];
        friedBeefMince.foodName=@"Fried beef mince";
        friedBeefMince.unit=@"100g";
        friedBeefMince.cal=206;
        
        FoodModule* beefFilet=[[FoodModule alloc] init];
        beefFilet.foodName=@"Beef filet";
        beefFilet.unit=@"100g";
        beefFilet.cal=140;
        
        FoodModule* beefSirloin=[[FoodModule alloc] init];
        beefSirloin.foodName=@"Beef sirloin";
        beefSirloin.unit=@"100g";
        beefSirloin.cal=135;
        
        FoodModule* beefRibEye=[[FoodModule alloc] init];
        beefRibEye.foodName=@"Beef rib-eye";
        beefRibEye.unit=@"100g";
        beefRibEye.cal=170;
        
        FoodModule* beefGoulash=[[FoodModule alloc] init];
        beefGoulash.foodName=@"Beef goulash";
        beefGoulash.unit=@"100g";
        beefGoulash.cal=160;
        
        FoodModule* beefBurger=[[FoodModule alloc] init];
        beefBurger.foodName=@"Beef burger";
        beefBurger.unit=@"100g";
        beefBurger.cal=693;
        
        [self.beef addObject:friedBeefMince];
        [self.beef addObject:beefFilet];
        [self.beef addObject:beefSirloin];
        [self.beef addObject:beefRibEye];
        [self.beef addObject:beefGoulash];
        [self.beef addObject:beefBurger];
        
        self.lamb=[NSMutableArray array];
        
        FoodModule* roastedLambBreast=[[FoodModule alloc] init];
        roastedLambBreast.foodName=@"Roasted lamb breast";
        roastedLambBreast.unit=@"100g";
        roastedLambBreast.cal=262;
        
        FoodModule* friedLambMince=[[FoodModule alloc] init];
        friedLambMince.foodName=@"Fried lamb mince";
        friedLambMince.unit=@"100g";
        friedLambMince.cal=329;
        
        FoodModule* stewedLambMince=[[FoodModule alloc] init];
        stewedLambMince.foodName=@"Stewed lamb mince";
        stewedLambMince.unit=@"100g";
        stewedLambMince.cal=208;
        
        FoodModule* friedLambLiver=[[FoodModule alloc] init];
        friedLambLiver.foodName=@"Fried lamb liver";
        friedLambLiver.unit=@"100g";
        friedLambLiver.cal=212;
        
        FoodModule* roastedLambLeg=[[FoodModule alloc] init];
        roastedLambLeg.foodName=@"Roasted lamb leg";
        roastedLambLeg.unit=@"100g";
        roastedLambLeg.cal=240;
        
        FoodModule* grilledLambFillet=[[FoodModule alloc] init];
        grilledLambFillet.foodName=@"Grilled lamb fillet";
        grilledLambFillet.unit=@"100g";
        grilledLambFillet.cal=232;
        
        [self.lamb addObject:roastedLambBreast];
        [self.lamb addObject:friedLambMince];
        [self.lamb addObject:stewedLambMince];
        [self.lamb addObject:friedLambLiver];
        [self.lamb addObject:roastedLambLeg];
        [self.lamb addObject:grilledLambFillet];
        
        self.pork=[NSMutableArray array];
        
        FoodModule* grilledPorkFilet=[[FoodModule alloc] init];
        grilledPorkFilet.foodName=@"Grilled pork filet";
        grilledPorkFilet.unit=@"100g";
        grilledPorkFilet.cal=170;
        
        FoodModule* roastedPorkLegJoint=[[FoodModule alloc] init];
        roastedPorkLegJoint.foodName=@"Roasted pork leg joint";
        roastedPorkLegJoint.unit=@"100g";
        roastedPorkLegJoint.cal=182;
        
        FoodModule* stewedPorkMince=[[FoodModule alloc] init];
        stewedPorkMince.foodName=@"Stewed pork mince";
        stewedPorkMince.unit=@"100g";
        stewedPorkMince.cal=191;
        
        FoodModule* grilledPorkSausages=[[FoodModule alloc] init];
        grilledPorkSausages.foodName=@"Grilled pork sausages";
        grilledPorkSausages.unit=@"100g";
        grilledPorkSausages.cal=158;
        
        FoodModule* porkDice=[[FoodModule alloc] init];
        porkDice.foodName=@"Pork dice";
        porkDice.unit=@"100g";
        porkDice.cal=189;
        
        FoodModule* roastedPorkLoinJoint=[[FoodModule alloc] init];
        roastedPorkLoinJoint.foodName=@"Roasted pork loin joint";
        roastedPorkLoinJoint.unit=@"100g";
        roastedPorkLoinJoint.cal=182;
        
        [self.pork addObject:grilledPorkFilet];
        [self.pork addObject:roastedPorkLegJoint];
        [self.pork addObject:stewedPorkMince];
        [self.pork addObject:grilledPorkSausages];
        [self.pork addObject:porkDice];
        [self.pork addObject:roastedPorkLoinJoint];
        
        self.seafood=[NSMutableArray array];
        
        FoodModule* boiledPrawns=[[FoodModule alloc] init];
        boiledPrawns.foodName=@"Boiled prawns";
        boiledPrawns.unit=@"100g";
        boiledPrawns.cal=117;
        
        FoodModule* friedPrawns=[[FoodModule alloc] init];
        friedPrawns.foodName=@"Fried prawns";
        friedPrawns.unit=@"100g";
        friedPrawns.cal=281;
        
        FoodModule* oyster=[[FoodModule alloc] init];
        oyster.foodName=@"Oyster";
        oyster.unit=@"100g";
        oyster.cal=60;
        
        FoodModule* boiledCrab=[[FoodModule alloc] init];
        boiledCrab.foodName=@"Boiled crab";
        boiledCrab.unit=@"100g";
        boiledCrab.cal=45;
        
        [self.seafood addObject:boiledPrawns];
        [self.seafood addObject:friedPrawns];
        [self.seafood addObject:oyster];
        [self.seafood addObject:boiledCrab];
        
        self.fruit=[NSMutableArray array];
        
        FoodModule* banana=[[FoodModule alloc] init];
        banana.foodName=@"Banana";
        banana.unit=@"100g";
        banana.cal=125;
        
        FoodModule* pear=[[FoodModule alloc] init];
        pear.foodName=@"Pear";
        pear.unit=@"100g";
        pear.cal=47;
        
        FoodModule* satsuma=[[FoodModule alloc] init];
        satsuma.foodName=@"Satsuma";
        satsuma.unit=@"100g";
        satsuma.cal=29;
        
        FoodModule* apple=[[FoodModule alloc] init];
        apple.foodName=@"Apple";
        apple.unit=@"100g";
        apple.cal=48;
        
        FoodModule* avocado=[[FoodModule alloc] init];
        avocado.foodName=@"Avocado";
        avocado.unit=@"100g";
        avocado.cal=236;
        
        FoodModule* orange=[[FoodModule alloc] init];
        orange.foodName=@"Orange";
        orange.unit=@"100g";
        orange.cal=39;
        
        FoodModule* grapes=[[FoodModule alloc] init];
        grapes.foodName=@"Grapes";
        grapes.unit=@"100g";
        grapes.cal=50;
        
        FoodModule* kiwiFruit=[[FoodModule alloc] init];
        kiwiFruit.foodName=@"Kiwi fruit";
        kiwiFruit.unit=@"100g";
        kiwiFruit.cal=56;
        
        FoodModule* melon=[[FoodModule alloc] init];
        melon.foodName=@"Melon";
        melon.unit=@"100g";
        melon.cal=28;
        
        FoodModule* strawberry=[[FoodModule alloc] init];
        strawberry.foodName=@"Strawberry";
        strawberry.unit=@"100g";
        strawberry.cal=28;
        
        [self.fruit addObject:banana];
        [self.fruit addObject:pear];
        [self.fruit addObject:satsuma];
        [self.fruit addObject:apple];
        [self.fruit addObject:avocado];
        [self.fruit addObject:orange];
        [self.fruit addObject:grapes];
        [self.fruit addObject:kiwiFruit];
        [self.fruit addObject:melon];
        [self.fruit addObject:strawberry];
        
        self.fastFood=[NSMutableArray array];
        
        FoodModule* cheeseburger=[[FoodModule alloc] init];
        cheeseburger.foodName=@"Cheeseburger";
        cheeseburger.unit=@"100g";
        cheeseburger.cal=379;
        
        FoodModule* frenchFries=[[FoodModule alloc] init];
        frenchFries.foodName=@"French fries";
        frenchFries.unit=@"100g";
        frenchFries.cal=294;
        
        FoodModule* pizza=[[FoodModule alloc] init];
        pizza.foodName=@"Pizza";
        pizza.unit=@"100g";
        pizza.cal=221;
        
        FoodModule* potatoWedges=[[FoodModule alloc] init];
        potatoWedges.foodName=@"Potato wedges";
        potatoWedges.unit=@"100g";
        potatoWedges.cal=234;
        
        [self.fastFood addObject:cheeseburger];
        [self.fastFood addObject:frenchFries];
        [self.fastFood addObject:pizza];
        [self.fastFood addObject:potatoWedges];
        
        self.eggsAndDairy=[NSMutableArray array];
        
        FoodModule* butter=[[FoodModule alloc] init];
        butter.foodName=@"Butter";
        butter.unit=@"10g";
        butter.cal=74;
        
        FoodModule* cheddarCheese=[[FoodModule alloc] init];
        cheddarCheese.foodName=@"Cheddar cheese";
        cheddarCheese.unit=@"10g";
        cheddarCheese.cal=43;
        
        FoodModule* creamCheese=[[FoodModule alloc] init];
        creamCheese.foodName=@"Cream cheese";
        creamCheese.unit=@"10g";
        creamCheese.cal=19;
        
        FoodModule* semiSkimmedMilk=[[FoodModule alloc] init];
        semiSkimmedMilk.foodName=@"Semi skimmed milk";
        semiSkimmedMilk.unit=@"100ml";
        semiSkimmedMilk.cal=48;
        
        FoodModule* wholeMilk=[[FoodModule alloc] init];
        wholeMilk.foodName=@"Whole milk";
        wholeMilk.unit=@"100ml";
        wholeMilk.cal=60;
        
        FoodModule* yoghurt=[[FoodModule alloc] init];
        yoghurt.foodName=@"Yoghurt";
        yoghurt.unit=@"pot";
        yoghurt.cal=106;
        
        [self.eggsAndDairy addObject:butter];
        [self.eggsAndDairy addObject:cheddarCheese];
        [self.eggsAndDairy addObject:creamCheese];
        [self.eggsAndDairy addObject:semiSkimmedMilk];
        [self.eggsAndDairy addObject:wholeMilk];
        [self.eggsAndDairy addObject:yoghurt];
        
        //这里开始把每个不同种类的食物放到self.lunch中
        
        GroupModule* salad=[[GroupModule alloc] init];
        salad.groupName=@"Salad";
        salad.group=self.salad;
        
        GroupModule* chicken=[[GroupModule alloc] init];
        chicken.groupName=@"Chicken";
        chicken.group=self.chicken;
        
        GroupModule* beef=[[GroupModule alloc] init];
        beef.groupName=@"Beef";
        beef.group=self.beef;
        
        GroupModule* lamb=[[GroupModule alloc] init];
        lamb.groupName=@"Lamb";
        lamb.group=self.lamb;
        
        GroupModule* pork=[[GroupModule alloc] init];
        pork.groupName=@"Pork";
        pork.group=self.pork;
        
        GroupModule* seafood=[[GroupModule alloc] init];
        seafood.groupName=@"Seafood";
        seafood.group=self.seafood;
        
        GroupModule* fruit=[[GroupModule alloc] init];
        fruit.groupName=@"Fruit";
        fruit.group=self.fruit;
        
        GroupModule* fastFood=[[GroupModule alloc] init];
        fastFood.groupName=@"Fast food";
        fastFood.group=self.fastFood;
        
        GroupModule* eggsAndDairy=[[GroupModule alloc] init];
        eggsAndDairy.groupName=@"Eggs and dairy";
        eggsAndDairy.group=self.eggsAndDairy;
        
        
        
        //把不同种类食物添加到lunch
        
        self.lunch=[NSMutableArray array];
        
        [self.lunch addObject:salad];
        [self.lunch addObject:chicken];
        [self.lunch addObject:beef];
        [self.lunch addObject:lamb];
        [self.lunch addObject:pork];
        [self.lunch addObject:seafood];
        [self.lunch addObject:fruit];
        [self.lunch addObject:fastFood];
        [self.lunch addObject:eggsAndDairy];
        
        
        
    }
    return self;
}

@end

