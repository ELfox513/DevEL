package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.managers.UserMapManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.p036ui.shared.Dialog;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.QuadDrawable;
/* loaded from: classes2.dex */
public class CustomMapSelectScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f10642a;

    /* renamed from: b */
    public Table f10643b;

    /* renamed from: com.prineside.tdi2.screens.CustomMapSelectScreen$2 */
    /* loaded from: classes2.dex */
    public class RunnableC20372 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ UserMap f10645a;

        public RunnableC20372(UserMap userMap) {
            this.f10645a = userMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.2.1
                @Override // com.badlogic.gdx.Input.TextInputListener
                public void canceled() {
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void input(final String str) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.userMapManager.rename(RunnableC20372.this.f10645a, str);
                            CustomMapSelectScreen.this.m21325b();
                        }
                    });
                }
            }, "", this.f10645a.name, "");
        }
    }

    /* renamed from: com.prineside.tdi2.screens.CustomMapSelectScreen$3 */
    /* loaded from: classes2.dex */
    public class RunnableC20403 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ UserMap f10650a;

        public RunnableC20403(UserMap userMap) {
            this.f10650a = userMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.3.1
                @Override // java.lang.Runnable
                public void run() {
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("delete_map_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.userMapManager.removeUserMap(RunnableC20403.this.f10650a.f8950id);
                            CustomMapSelectScreen.this.m21325b();
                        }
                    });
                    Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
                }
            };
            if (GameStateSystem.savedGameExists()) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        GameStateSystem.deleteSavedGame();
                        runnable.run();
                    }
                });
                return;
            }
            runnable.run();
        }
    }

    /* renamed from: com.prineside.tdi2.screens.CustomMapSelectScreen$5 */
    /* loaded from: classes2.dex */
    public class RunnableC20455 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ UserMap f10658a;

        public RunnableC20455(UserMap userMap) {
            this.f10658a = userMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f10658a.map.validate();
                final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!RunnableC20455.this.f10658a.map.targetTile.isDisableAbilities() && Game.f8589i.abilityManager.isAnyAbilityOpened()) {
                            Game.f8589i.uiManager.abilitySelectionOverlay.show(new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.5.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                }
                            }, new ObjectRetriever<AbilitySelectionOverlay.SelectedAbilitiesConfiguration>() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.5.1.2
                                @Override // com.prineside.tdi2.utils.ObjectRetriever
                                public void retrieved(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
                                    Game.f8589i.screenManager.startNewUserLevel(RunnableC20455.this.f10658a, selectedAbilitiesConfiguration);
                                }
                            });
                        } else {
                            Game.f8589i.screenManager.startNewUserLevel(RunnableC20455.this.f10658a, null);
                        }
                    }
                };
                new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (GameStateSystem.savedGameExists()) {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.5.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GameStateSystem.deleteSavedGame();
                                    runnable.run();
                                }
                            });
                            return;
                        }
                        runnable.run();
                    }
                }.run();
            } catch (Map.InvalidMapException e) {
                Dialog dialog = Game.f8589i.uiManager.dialog;
                dialog.showAlert(Game.f8589i.localeManager.i18n.get("map_cant_be_played") + ": " + e.getFixHintMessage());
            }
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        Game.f8589i.uiManager.setAsInputHandler();
    }

    /* renamed from: b */
    public final void m21325b() {
        int i;
        Table table;
        this.f10643b.clear();
        Table table2 = new Table();
        float f = 800.0f;
        this.f10643b.add(table2).width(800.0f).padRight(40.0f).expandY().fillY();
        boolean z = false;
        int i2 = 0;
        while (true) {
            Array<UserMap> array = Game.f8589i.userMapManager.userMapsOrdered;
            i = array.size;
            if (i2 >= i) {
                break;
            }
            final UserMap userMap = array.get(i2);
            Group group = new Group();
            group.setTransform(z);
            table2.add((Table) group).size(f, 250.0f).padBottom(4.0f).row();
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setSize(f, 250.0f);
            image.setColor(new Color(0.0f, 0.0f, 0.0f, 0.28f));
            group.addActor(image);
            userMap.map.regeneratePreview();
            Image image2 = new Image(userMap.map.getPreview().getTextureRegion());
            image2.setSize(310.0f, 230.0f);
            image2.setPosition(10.0f, 10.0f);
            group.addActor(image2);
            Label label = new Label(userMap.name, Game.f8589i.assetManager.getLabelStyle(30));
            label.setPosition(340.0f, 192.0f);
            label.setSize(100.0f, 30.0f);
            group.addActor(label);
            TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-edit");
            RunnableC20372 runnableC20372 = new RunnableC20372(userMap);
            Color color = MaterialColor.LIGHT_BLUE.P800;
            Color color2 = MaterialColor.LIGHT_BLUE.P700;
            Color color3 = MaterialColor.LIGHT_BLUE.P900;
            PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnableC20372, color, color2, color3);
            paddedImageButton.setIconSize(40.0f, 40.0f);
            paddedImageButton.setIconPosition(12.0f, 12.0f);
            paddedImageButton.setPosition(712.0f, 176.0f);
            group.addActor(paddedImageButton);
            ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new RunnableC20403(userMap));
            Color color4 = Color.WHITE;
            complexButton.setBackground(new QuadDrawable(new QuadActor(color4, new float[]{0.0f, 0.0f, 0.0f, 64.0f, 104.0f, 64.0f, 96.0f, 0.0f})), 0.0f, 0.0f, 104.0f, 64.0f);
            Color color5 = MaterialColor.RED.P800;
            Color color6 = MaterialColor.RED.P900;
            Color color7 = MaterialColor.RED.P700;
            Color color8 = Color.GRAY;
            complexButton.setBackgroundColors(color5, color6, color7, color8);
            complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 22.0f, 8.0f, 48.0f, 48.0f);
            complexButton.setPosition(338.0f, 18.0f);
            group.addActor(complexButton);
            ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.4
                @Override // java.lang.Runnable
                public void run() {
                    Game.f8589i.screenManager.goToMapEditorScreen(userMap);
                }
            });
            Table table3 = table2;
            complexButton2.setBackground(new QuadDrawable(new QuadActor(color4, new float[]{0.0f, 0.0f, 8.0f, 64.0f, 170.0f, 64.0f, 162.0f, 0.0f})), 0.0f, 0.0f, 170.0f, 64.0f);
            complexButton2.setBackgroundColors(color, color3, color2, color8);
            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-edit"), 61.0f, 8.0f, 48.0f, 48.0f);
            complexButton2.setPosition(442.0f, 18.0f);
            group.addActor(complexButton2);
            ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new RunnableC20455(userMap));
            complexButton3.setBackground(new QuadDrawable(new QuadActor(color4, new float[]{0.0f, 0.0f, 8.0f, 64.0f, 170.0f, 64.0f, 170.0f, 0.0f})), 0.0f, 0.0f, 170.0f, 64.0f);
            complexButton3.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color8);
            complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), 65.0f, 8.0f, 48.0f, 48.0f);
            complexButton3.setPosition(612.0f, 18.0f);
            group.addActor(complexButton3);
            i2++;
            table2 = table3;
            z = false;
            f = 800.0f;
        }
        Table table4 = table2;
        if (i < 8) {
            Group group2 = new Group();
            group2.setTransform(false);
            table = table4;
            table.add((Table) group2).size(800.0f, 100.0f).padBottom(4.0f).row();
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image3.setSize(800.0f, 100.0f);
            image3.setColor(new Color(0.0f, 0.0f, 0.0f, 0.28f));
            group2.addActor(image3);
            Label label2 = new Label(Game.f8589i.localeManager.i18n.get("new_map") + ":", Game.f8589i.assetManager.getLabelStyle(24));
            label2.setSize(222.0f, 64.0f);
            label2.setPosition(18.0f, 18.0f);
            label2.setAlignment(16);
            group2.addActor(label2);
            TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), Color.WHITE, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
            textFieldStyle.cursor.setMinWidth(2.0f);
            Drawable drawable2 = textFieldStyle.background;
            drawable2.setLeftWidth(drawable2.getLeftWidth() + 10.0f);
            Drawable drawable3 = textFieldStyle.background;
            drawable3.setRightWidth(drawable3.getRightWidth() + 10.0f);
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform("", textFieldStyle);
            textFieldXPlatform.setSize(306.0f, 64.0f);
            textFieldXPlatform.setPosition(258.0f, 18.0f);
            group2.addActor(textFieldXPlatform);
            RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("create"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.6
                @Override // java.lang.Runnable
                public void run() {
                    if (textFieldXPlatform.getText().length() == 0) {
                        Game game = Game.f8589i;
                        game.uiManager.dialog.showAlert(game.localeManager.i18n.get("enter_map_name"));
                        return;
                    }
                    Game.f8589i.userMapManager.addUserMap(textFieldXPlatform.getText());
                    CustomMapSelectScreen.this.m21325b();
                }
            });
            rectButton.setSize(200.0f, 64.0f);
            rectButton.setPosition(582.0f, 18.0f);
            group2.addActor(rectButton);
        } else {
            table = table4;
        }
        table.add().expand().fill();
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            Game.f8589i.screenManager.goToMainMenu();
        }
    }

    public CustomMapSelectScreen() {
        UserMapManager userMapManager;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "CustomMapSelectScreen main");
        this.f10642a = addLayer;
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setIcon(game.assetManager.getDrawable("icon-edit")).setText(Game.f8589i.localeManager.i18n.get("map_editor_map_select_title")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.CustomMapSelectScreen.1
            @Override // java.lang.Runnable
            public void run() {
                if (Game.f8589i.uiManager.abilitySelectionOverlay.isVisible()) {
                    Game.f8589i.uiManager.abilitySelectionOverlay.hide();
                } else {
                    Game.f8589i.screenManager.goToMainMenu();
                }
            }
        });
        Table table = addLayer.getTable();
        Table table2 = new Table();
        table.add((Table) new ScrollPane(table2)).padRight(40.0f).fill().expand();
        table2.add().top().left().height(160.0f).fillX().expandX().row();
        Table table3 = new Table();
        this.f10643b = table3;
        table2.add(table3).expandX().fillX().padBottom(160.0f).row();
        table2.add().fill().expand();
        int i = 0;
        boolean z = false;
        while (true) {
            userMapManager = Game.f8589i.userMapManager;
            Array<UserMap> array = userMapManager.userMapsOrdered;
            if (i >= array.size) {
                break;
            }
            if (array.items[i].removeUnexistentTilesFromMap()) {
                z = true;
            }
            i++;
        }
        if (z) {
            userMapManager.save();
        }
        m21325b();
        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        super.dispose();
        Game.f8589i.uiManager.removeLayer(this.f10642a);
    }
}
