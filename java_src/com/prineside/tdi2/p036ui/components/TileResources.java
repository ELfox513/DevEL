package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.TileResources */
/* loaded from: classes2.dex */
public class TileResources extends Group {

    /* renamed from: M */
    public SourceTile f13703M;

    /* renamed from: N */
    public float f13704N;

    /* renamed from: O */
    public boolean f13705O;

    public SourceTile getTile() {
        return this.f13703M;
    }

    public void setTile(SourceTile sourceTile) {
        Label.LabelStyle labelStyle;
        float f;
        ResourceType[] resourceTypeArr;
        ResourceType[] resourceTypeArr2;
        String str;
        float f2;
        if (this.f13705O) {
            labelStyle = Game.f8589i.assetManager.getLabelStyle(21);
        } else {
            labelStyle = Game.f8589i.assetManager.getLabelStyle(24);
        }
        if (this.f13705O) {
            f = 24.0f;
        } else {
            f = 32.0f;
        }
        this.f13703M = sourceTile;
        clearChildren();
        Table table = new Table();
        table.setPosition(0.0f, 48.0f);
        table.setSize(this.f13704N, f);
        addActor(table);
        int i = 0;
        for (ResourceType resourceType : ResourceType.values) {
            int resourcesCount = sourceTile.getResourcesCount(resourceType);
            if (resourcesCount > 0) {
                if (i > 0) {
                    Cell height = table.add().height(f);
                    if (this.f13705O) {
                        f2 = 10.0f;
                    } else {
                        f2 = 24.0f;
                    }
                    height.width(f2);
                }
                i += resourcesCount;
                Image image = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[resourceType.ordinal()]));
                image.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                table.add((Table) image).size(f).padRight(4.0f);
                Label label = new Label(StringFormatter.compactNumber(resourcesCount, false), labelStyle);
                label.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                table.add((Table) label).height(f);
            }
        }
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("blank");
        if (i == 0) {
            Actor image2 = new Image(drawable);
            image2.setColor(0.0f, 0.0f, 0.0f, 0.56f);
            image2.setSize(this.f13704N, 8.0f);
            image2.setPosition(0.0f, 29.0f);
            addActor(image2);
            Label label2 = new Label(Game.f8589i.localeManager.i18n.get("no_resources"), labelStyle);
            label2.setAlignment(1);
            label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            table.add((Table) label2).size(this.f13704N, 32.0f);
            return;
        }
        float f3 = 0.0f;
        for (ResourceType resourceType2 : ResourceType.values) {
            float resourcesCount2 = (sourceTile.getResourcesCount(resourceType2) * sourceTile.getResourceDensity()) / i;
            if (resourcesCount2 > 0.0f) {
                Actor image3 = new Image(drawable);
                image3.setColor(Game.f8589i.resourceManager.getColor(resourceType2));
                image3.setSize(this.f13704N * resourcesCount2, 8.0f);
                image3.setPosition(this.f13704N * f3, 29.0f);
                addActor(image3);
                f3 += resourcesCount2;
            }
        }
        if (f3 < 1.0f) {
            Actor image4 = new Image(drawable);
            image4.setColor(0.0f, 0.0f, 0.0f, 0.56f);
            image4.setSize(this.f13704N * (1.0f - f3), 8.0f);
            image4.setPosition(this.f13704N * f3, 29.0f);
            addActor(image4);
            Actor image5 = new Image(drawable);
            image5.setColor(new Color(-1970631937));
            image5.setSize(2.0f, 35.0f);
            image5.setPosition(this.f13704N * f3, 6.0f);
            addActor(image5);
        }
        if (this.f13704N < 360.0f) {
            str = ((int) (100.0f * f3)) + "%";
        } else {
            str = Game.f8589i.localeManager.i18n.get("resource_density") + ": " + ((int) (100.0f * f3)) + "%";
        }
        Label label3 = new Label(str, new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), Color.WHITE));
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label3.setSize(0.0f, 24.0f);
        addActor(label3);
        float f4 = 40.0f;
        if (f3 > 0.5f) {
            label3.setAlignment(16);
            float f5 = this.f13704N;
            float f6 = (f3 * f5) - 10.0f;
            if (f6 > f5 - 40.0f) {
                f6 = f5 - 40.0f;
            }
            label3.setPosition(f6, 0.0f);
            return;
        }
        label3.setAlignment(8);
        float f7 = (this.f13704N * f3) + 10.0f;
        if (f7 >= 40.0f) {
            f4 = f7;
        }
        label3.setPosition(f4, 0.0f);
    }

    public TileResources(float f) {
        boolean z;
        this.f13704N = f;
        if (f < 350.0f) {
            z = true;
        } else {
            z = false;
        }
        this.f13705O = z;
        setTransform(false);
        setSize(f, 80.0f);
        setTouchable(Touchable.disabled);
    }
}
