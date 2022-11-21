package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Window */
/* loaded from: classes.dex */
public class Window extends Table {

    /* renamed from: I0 */
    public static final Vector2 f6257I0 = new Vector2();

    /* renamed from: J0 */
    public static final Vector2 f6258J0 = new Vector2();

    /* renamed from: A0 */
    public boolean f6259A0;

    /* renamed from: B0 */
    public int f6260B0;

    /* renamed from: C0 */
    public boolean f6261C0;

    /* renamed from: D0 */
    public Label f6262D0;

    /* renamed from: E0 */
    public Table f6263E0;

    /* renamed from: F0 */
    public boolean f6264F0;

    /* renamed from: G0 */
    public int f6265G0;

    /* renamed from: H0 */
    public boolean f6266H0;

    /* renamed from: x0 */
    public WindowStyle f6267x0;

    /* renamed from: y0 */
    public boolean f6268y0;

    /* renamed from: z0 */
    public boolean f6269z0;

    public Window(String str, Skin skin) {
        this(str, (WindowStyle) skin.get(WindowStyle.class));
        setSkin(skin);
    }

    /* renamed from: A */
    public Label m23707A(String str, Label.LabelStyle labelStyle) {
        return new Label(str, labelStyle);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        return Math.max(super.getPrefWidth(), this.f6263E0.getPrefWidth() + getPadLeft() + getPadRight());
    }

    public WindowStyle getStyle() {
        return this.f6267x0;
    }

    public Label getTitleLabel() {
        return this.f6262D0;
    }

    public Table getTitleTable() {
        return this.f6263E0;
    }

    public boolean isDragging() {
        return this.f6266H0;
    }

    public boolean isModal() {
        return this.f6269z0;
    }

    public boolean isMovable() {
        return this.f6268y0;
    }

    public boolean isResizable() {
        return this.f6259A0;
    }

    public void setKeepWithinStage(boolean z) {
        this.f6261C0 = z;
    }

    public void setModal(boolean z) {
        this.f6269z0 = z;
    }

    public void setMovable(boolean z) {
        this.f6268y0 = z;
    }

    public void setResizable(boolean z) {
        this.f6259A0 = z;
    }

    public void setResizeBorder(int i) {
        this.f6260B0 = i;
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Window$WindowStyle */
    /* loaded from: classes.dex */
    public static class WindowStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable stageBackground;
        public BitmapFont titleFont;
        @Null
        public Color titleFontColor;

        public WindowStyle() {
            this.titleFontColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        }

        public WindowStyle(BitmapFont bitmapFont, Color color, @Null Drawable drawable) {
            Color color2 = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            this.titleFontColor = color2;
            this.titleFont = bitmapFont;
            color2.set(color);
            this.background = drawable;
        }

        public WindowStyle(WindowStyle windowStyle) {
            this.titleFontColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            this.background = windowStyle.background;
            this.titleFont = windowStyle.titleFont;
            if (windowStyle.titleFontColor != null) {
                this.titleFontColor = new Color(windowStyle.titleFontColor);
            }
            this.background = windowStyle.background;
        }
    }

    public void keepWithinStage() {
        Stage stage;
        if (!this.f6261C0 || (stage = getStage()) == null) {
            return;
        }
        Camera camera = stage.getCamera();
        if (camera instanceof OrthographicCamera) {
            OrthographicCamera orthographicCamera = (OrthographicCamera) camera;
            float width = stage.getWidth();
            float height = stage.getHeight();
            float x = getX(16);
            float f = camera.position.f5533x;
            float f2 = width / 2.0f;
            float f3 = orthographicCamera.zoom;
            if (x - f > f2 / f3) {
                setPosition(f + (f2 / f3), getY(16), 16);
            }
            float x2 = getX(8);
            float f4 = camera.position.f5533x;
            float f5 = orthographicCamera.zoom;
            if (x2 - f4 < ((-width) / 2.0f) / f5) {
                setPosition(f4 - (f2 / f5), getY(8), 8);
            }
            float f6 = height / 2.0f;
            if (getY(2) - camera.position.f5534y > f6 / orthographicCamera.zoom) {
                setPosition(getX(2), camera.position.f5534y + (f6 / orthographicCamera.zoom), 2);
            }
            if (getY(4) - camera.position.f5534y < ((-height) / 2.0f) / orthographicCamera.zoom) {
                setPosition(getX(4), camera.position.f5534y - (f6 / orthographicCamera.zoom), 4);
            }
        } else if (getParent() == stage.getRoot()) {
            float width2 = stage.getWidth();
            float height2 = stage.getHeight();
            if (getX() < 0.0f) {
                setX(0.0f);
            }
            if (getRight() > width2) {
                setX(width2 - getWidth());
            }
            if (getY() < 0.0f) {
                setY(0.0f);
            }
            if (getTop() > height2) {
                setY(height2 - getHeight());
            }
        }
    }

    public void setStyle(WindowStyle windowStyle) {
        if (windowStyle != null) {
            this.f6267x0 = windowStyle;
            setBackground(windowStyle.background);
            this.f6262D0.setStyle(new Label.LabelStyle(windowStyle.titleFont, windowStyle.titleFontColor));
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public Window(String str, Skin skin, String str2) {
        this(str, (WindowStyle) skin.get(str2, WindowStyle.class));
        setSkin(skin);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        Stage stage = getStage();
        if (stage != null) {
            if (stage.getKeyboardFocus() == null) {
                stage.setKeyboardFocus(this);
            }
            keepWithinStage();
            if (this.f6267x0.stageBackground != null) {
                Vector2 vector2 = f6257I0;
                stageToLocalCoordinates(vector2.set(0.0f, 0.0f));
                Vector2 vector22 = f6258J0;
                stageToLocalCoordinates(vector22.set(stage.getWidth(), stage.getHeight()));
                m23705z(batch, f, getX() + vector2.f5527x, getY() + vector2.f5528y, getX() + vector22.f5527x, getY() + vector22.f5528y);
            }
        }
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    @Null
    public Actor hit(float f, float f2, boolean z) {
        if (!isVisible()) {
            return null;
        }
        Actor hit = super.hit(f, f2, z);
        if (hit == null && this.f6269z0 && (!z || getTouchable() == Touchable.enabled)) {
            return this;
        }
        float height = getHeight();
        if (hit != null && hit != this && f2 <= height && f2 >= height - getPadTop() && f >= 0.0f && f <= getWidth()) {
            Actor actor = hit;
            while (actor.getParent() != this) {
                actor = actor.getParent();
            }
            if (getCell(actor) != null) {
                return this;
            }
        }
        return hit;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table
    /* renamed from: u */
    public void mo23706u(Batch batch, float f, float f2, float f3) {
        super.mo23706u(batch, f, f2, f3);
        this.f6263E0.getColor().f3889a = getColor().f3889a;
        float padTop = getPadTop();
        float padLeft = getPadLeft();
        this.f6263E0.setSize((getWidth() - padLeft) - getPadRight(), padTop);
        this.f6263E0.setPosition(padLeft, getHeight() - padTop);
        this.f6264F0 = true;
        this.f6263E0.draw(batch, f);
        this.f6264F0 = false;
    }

    /* renamed from: z */
    public void m23705z(Batch batch, float f, float f2, float f3, float f4, float f5) {
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        this.f6267x0.stageBackground.draw(batch, f2, f3, f4, f5);
    }

    public Window(String str, WindowStyle windowStyle) {
        this.f6268y0 = true;
        this.f6260B0 = 8;
        this.f6261C0 = true;
        if (str != null) {
            setTouchable(Touchable.enabled);
            setClip(true);
            Label m23707A = m23707A(str, new Label.LabelStyle(windowStyle.titleFont, windowStyle.titleFontColor));
            this.f6262D0 = m23707A;
            m23707A.setEllipsis(true);
            Table table = new Table() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Window.1
                @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
                public void draw(Batch batch, float f) {
                    if (Window.this.f6264F0) {
                        super.draw(batch, f);
                    }
                }
            };
            this.f6263E0 = table;
            table.add((Table) this.f6262D0).expandX().fillX().minWidth(0.0f);
            addActor(this.f6263E0);
            setStyle(windowStyle);
            setWidth(150.0f);
            setHeight(150.0f);
            addCaptureListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Window.2
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    Window.this.toFront();
                    return false;
                }
            });
            addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Window.3

                /* renamed from: b */
                public float f6272b;

                /* renamed from: c */
                public float f6273c;

                /* renamed from: d */
                public float f6274d;

                /* renamed from: e */
                public float f6275e;

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean keyDown(InputEvent inputEvent, int i) {
                    return Window.this.f6269z0;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean keyTyped(InputEvent inputEvent, char c) {
                    return Window.this.f6269z0;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean keyUp(InputEvent inputEvent, int i) {
                    return Window.this.f6269z0;
                }

                public boolean scrolled(InputEvent inputEvent, float f, float f2, int i) {
                    return Window.this.f6269z0;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    boolean z;
                    if (i2 == 0) {
                        m23704a(f, f2);
                        Window window = Window.this;
                        if (window.f6265G0 != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        window.f6266H0 = z;
                        this.f6272b = f;
                        this.f6273c = f2;
                        this.f6274d = f - window.getWidth();
                        this.f6275e = f2 - Window.this.getHeight();
                    }
                    Window window2 = Window.this;
                    return window2.f6265G0 != 0 || window2.f6269z0;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    Window.this.f6266H0 = false;
                }

                /* renamed from: a */
                public final void m23704a(float f, float f2) {
                    Window window;
                    float f3 = window.f6260B0 / 2.0f;
                    float width = Window.this.getWidth();
                    float height = Window.this.getHeight();
                    float padTop = Window.this.getPadTop();
                    float padLeft = Window.this.getPadLeft();
                    float padBottom = Window.this.getPadBottom();
                    float padRight = width - Window.this.getPadRight();
                    Window window2 = Window.this;
                    window2.f6265G0 = 0;
                    if (window2.f6259A0 && f >= padLeft - f3 && f <= padRight + f3 && f2 >= padBottom - f3) {
                        if (f < padLeft + f3) {
                            window2.f6265G0 = 0 | 8;
                        }
                        if (f > padRight - f3) {
                            window2.f6265G0 |= 16;
                        }
                        if (f2 < padBottom + f3) {
                            window2.f6265G0 |= 4;
                        }
                        int i = window2.f6265G0;
                        if (i != 0) {
                            f3 += 25.0f;
                        }
                        if (f < padLeft + f3) {
                            window2.f6265G0 = i | 8;
                        }
                        if (f > padRight - f3) {
                            window2.f6265G0 |= 16;
                        }
                        if (f2 < padBottom + f3) {
                            window2.f6265G0 |= 4;
                        }
                    }
                    if (window2.f6268y0 && window2.f6265G0 == 0 && f2 <= height && f2 >= height - padTop && f >= padLeft && f <= padRight) {
                        window2.f6265G0 = 32;
                    }
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
                    boolean z;
                    Window window = Window.this;
                    if (!window.f6266H0) {
                        return;
                    }
                    float width = window.getWidth();
                    float height = Window.this.getHeight();
                    float x = Window.this.getX();
                    float y = Window.this.getY();
                    float minWidth = Window.this.getMinWidth();
                    Window.this.getMaxWidth();
                    float minHeight = Window.this.getMinHeight();
                    Window.this.getMaxHeight();
                    Stage stage = Window.this.getStage();
                    Window window2 = Window.this;
                    if (window2.f6261C0 && stage != null && window2.getParent() == stage.getRoot()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i2 = Window.this.f6265G0;
                    if ((i2 & 32) != 0) {
                        x += f - this.f6272b;
                        y += f2 - this.f6273c;
                    }
                    if ((i2 & 8) != 0) {
                        float f3 = f - this.f6272b;
                        if (width - f3 < minWidth) {
                            f3 = -(minWidth - width);
                        }
                        if (z && x + f3 < 0.0f) {
                            f3 = -x;
                        }
                        width -= f3;
                        x += f3;
                    }
                    if ((i2 & 4) != 0) {
                        float f4 = f2 - this.f6273c;
                        if (height - f4 < minHeight) {
                            f4 = -(minHeight - height);
                        }
                        if (z && y + f4 < 0.0f) {
                            f4 = -y;
                        }
                        height -= f4;
                        y += f4;
                    }
                    if ((i2 & 16) != 0) {
                        float f5 = (f - this.f6274d) - width;
                        if (width + f5 < minWidth) {
                            f5 = minWidth - width;
                        }
                        if (z && x + width + f5 > stage.getWidth()) {
                            f5 = (stage.getWidth() - x) - width;
                        }
                        width += f5;
                    }
                    if ((Window.this.f6265G0 & 2) != 0) {
                        float f6 = (f2 - this.f6275e) - height;
                        if (height + f6 < minHeight) {
                            f6 = minHeight - height;
                        }
                        if (z && y + height + f6 > stage.getHeight()) {
                            f6 = (stage.getHeight() - y) - height;
                        }
                        height += f6;
                    }
                    Window.this.setBounds(Math.round(x), Math.round(y), Math.round(width), Math.round(height));
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                    m23704a(f, f2);
                    return Window.this.f6269z0;
                }
            });
            return;
        }
        throw new IllegalArgumentException("title cannot be null.");
    }
}
