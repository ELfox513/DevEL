package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResearchCategoryType;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* loaded from: classes2.dex */
public class ResearchCategory {

    /* renamed from: a */
    public final String f8860a;
    public final ResearchCategoryType alias;

    /* renamed from: b */
    public Array<TextureRegionConfig> f8861b;
    public final String descriptionAlias;
    public final String titleAlias;

    public String getDescription() {
        return Game.f8589i.localeManager.i18n.get(this.descriptionAlias);
    }

    public String getTitle() {
        return Game.f8589i.localeManager.i18n.get(this.titleAlias);
    }

    public Array<TextureRegionConfig> getIcon() {
        if (this.f8861b == null && Game.f8589i.assetManager != null) {
            if (this.f8860a.startsWith("@gv:")) {
                this.f8861b = Game.f8589i.gameValueManager.getStockValueConfig(GameValueType.valueOf(this.f8860a.substring(4))).getIcon();
            } else {
                Array<TextureRegionConfig> array = new Array<>(true, 1, TextureRegionConfig.class);
                this.f8861b = array;
                array.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(this.f8860a)));
            }
        }
        return this.f8861b;
    }

    public ResearchCategory(ResearchCategoryType researchCategoryType, String str, String str2, String str3) {
        this.alias = researchCategoryType;
        this.titleAlias = str;
        this.descriptionAlias = str2;
        this.f8860a = str3;
    }
}
