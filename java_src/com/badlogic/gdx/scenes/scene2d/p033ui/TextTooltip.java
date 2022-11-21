package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextTooltip */
/* loaded from: classes.dex */
public class TextTooltip extends Tooltip<Label> {

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextTooltip$TextTooltipStyle */
    /* loaded from: classes.dex */
    public static class TextTooltipStyle {
        @Null
        public Drawable background;
        public Label.LabelStyle label;
        public float wrapWidth;

        public TextTooltipStyle() {
        }

        public TextTooltipStyle(Label.LabelStyle labelStyle, @Null Drawable drawable) {
            this.label = labelStyle;
            this.background = drawable;
        }

        public TextTooltipStyle(TextTooltipStyle textTooltipStyle) {
            this.label = new Label.LabelStyle(textTooltipStyle.label);
            this.background = textTooltipStyle.background;
            this.wrapWidth = textTooltipStyle.wrapWidth;
        }
    }

    public TextTooltip(@Null String str, Skin skin) {
        this(str, TooltipManager.getInstance(), (TextTooltipStyle) skin.get(TextTooltipStyle.class));
    }

    /* renamed from: b */
    public Label m23738b(String str, Label.LabelStyle labelStyle) {
        return new Label(str, labelStyle);
    }

    public TextTooltip(@Null String str, Skin skin, String str2) {
        this(str, TooltipManager.getInstance(), (TextTooltipStyle) skin.get(str2, TextTooltipStyle.class));
    }

    public void setStyle(TextTooltipStyle textTooltipStyle) {
        boolean z;
        if (textTooltipStyle != null) {
            this.f6173c.setBackground(textTooltipStyle.background);
            this.f6173c.maxWidth(textTooltipStyle.wrapWidth);
            if (textTooltipStyle.wrapWidth != 0.0f) {
                z = true;
            } else {
                z = false;
            }
            this.f6173c.fill(z);
            Label label = (Label) this.f6173c.getActor();
            label.setStyle(textTooltipStyle.label);
            label.setWrap(z);
            return;
        }
        throw new NullPointerException("style cannot be null");
    }

    public TextTooltip(@Null String str, TextTooltipStyle textTooltipStyle) {
        this(str, TooltipManager.getInstance(), textTooltipStyle);
    }

    public TextTooltip(@Null String str, TooltipManager tooltipManager, Skin skin) {
        this(str, tooltipManager, (TextTooltipStyle) skin.get(TextTooltipStyle.class));
    }

    public TextTooltip(@Null String str, TooltipManager tooltipManager, Skin skin, String str2) {
        this(str, tooltipManager, (TextTooltipStyle) skin.get(str2, TextTooltipStyle.class));
    }

    public TextTooltip(@Null String str, TooltipManager tooltipManager, TextTooltipStyle textTooltipStyle) {
        super(null, tooltipManager);
        this.f6173c.setActor(m23738b(str, textTooltipStyle.label));
        setStyle(textTooltipStyle);
    }
}
