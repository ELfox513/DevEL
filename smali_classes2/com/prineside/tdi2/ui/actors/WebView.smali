.class public Lcom/prineside/tdi2/ui/actors/WebView;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;,
        Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;
    }
.end annotation


# instance fields
.field public pageHeight:I

.field public pageWidth:I

.field public x0:Lcom/badlogic/gdx/Net$HttpRequest;

.field public final y0:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    const-string v1, "tdi2-build"

    const-string v2, "184"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object p0
.end method

.method public static synthetic B(Lcom/prineside/tdi2/ui/actors/WebView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/WebView;->D()Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->x0:Lcom/badlogic/gdx/Net$HttpRequest;

    return-object p1
.end method

.method public static F(Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&amp;"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&quot;"

    const-string p2, "\""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&apos;"

    const-string p2, "\'"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&lt;"

    const-string p2, "<"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&gt;"

    const-string p2, ">"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static G(Lcom/badlogic/gdx/Net$HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/Net$HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/StringFormatter;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    const-string v0, ":"

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    :try_start_0
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    const/16 v4, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    iput p0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Lcom/badlogic/gdx/graphics/Color;->rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor;->allColors:[[Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/MaterialColor$Colors;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/utils/MaterialColor$Colors;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    aget-object p0, p0, v3

    invoke-static {p0}, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor;->allColors:[[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0}, Lcom/prineside/tdi2/utils/MaterialColor$Colors;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/utils/MaterialColor$Colors;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->P500:Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WebView"

    const-string v2, "Failed to read color"

    invoke-static {v0, v2, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static I(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    const-string v0, "color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/actors/WebView;->H(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method


# virtual methods
.method public final D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;)V
    .locals 8

    const-string v0, "WebView"

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "width"

    invoke-virtual {p2, v3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "height"

    invoke-virtual {p2, v4, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    aget-object v4, p2, v1

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x322104d2

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "player-level-badge"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "div data not recognized ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v4, 0x1

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/managers/AuthManager;->getProfileLevelTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    :goto_1
    iget p3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, p3, :cond_3

    iget-object p3, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p3, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object p3, p3, v1

    invoke-virtual {p3, v2, v2, v3}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "failed to generate div data"

    invoke-static {v0, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final J(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    instance-of v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->cpy()Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;

    move-result-object v7

    const-string v8, "font-size"

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    const-string v9, "WebView"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->fontSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "failed to read font-size of body"

    invoke-static {v9, v10, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_41

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v16, -0x1

    const/4 v10, 0x1

    sparse-switch v13, :sswitch_data_0

    :goto_3
    const/4 v0, -0x1

    goto :goto_4

    :sswitch_0
    const-string v13, "table"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x5

    goto :goto_4

    :sswitch_1
    const-string v13, "label"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_2
    const-string v13, "quad"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_3
    const-string v13, "img"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_4
    const-string v13, "div"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_5
    const-string v13, "br"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_4
    const-string v13, "Failed to read font-size"

    packed-switch v0, :pswitch_data_0

    const/4 v13, 0x0

    goto/16 :goto_1c

    :pswitch_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    if-eqz v6, :cond_8

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move-object v13, v5

    :goto_5
    invoke-virtual {v1, v0, v12, v7}, Lcom/prineside/tdi2/ui/actors/WebView;->J(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;)V

    :goto_6
    move-object v14, v0

    :goto_7
    move-object v15, v13

    :goto_8
    const/4 v13, 0x0

    goto/16 :goto_1d

    :pswitch_1
    iget v15, v7, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->fontSize:I

    :try_start_1
    invoke-virtual {v12, v8, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-static {v9, v13, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v13

    const-string v0, "i18nf"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    if-eqz v13, :cond_c

    :try_start_2
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v14, "[]"

    invoke-static {v12, v0, v14}, Lcom/prineside/tdi2/ui/actors/WebView;->F(Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    const/4 v14, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_a
    new-array v5, v14, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v14, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v5, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v14

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_b
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, v13, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v5, "failed to parse i18nf"

    invoke-static {v9, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_d
    const-string v0, "label-max-width"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "font-min-size"

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "font-min-size"

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_e

    :cond_d
    move v5, v15

    :goto_e
    new-instance v14, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v14, v13, v15, v5, v0}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    goto :goto_f

    :cond_e
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v0, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    move-object v14, v0

    :goto_f
    const-string v0, "nowrap"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidate()V

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->pack()V

    :cond_f
    const-string v0, "text-align"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    const-string v0, "text-align"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_10

    :sswitch_6
    const-string v5, "right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_11

    :sswitch_7
    const-string v5, "left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :sswitch_8
    const-string v5, "top"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_11

    :sswitch_9
    const-string v5, "bottomRight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    goto :goto_11

    :sswitch_a
    const-string v5, "topRight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x6

    goto :goto_11

    :sswitch_b
    const-string v5, "topLeft"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    goto :goto_11

    :sswitch_c
    const-string v5, "center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :sswitch_d
    const-string v5, "bottom"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_11

    :sswitch_e
    const-string v5, "bottomLeft"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, -0x1

    :goto_11
    packed-switch v0, :pswitch_data_1

    goto :goto_12

    :pswitch_2
    const/16 v0, 0x14

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_3
    const/16 v0, 0xc

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_4
    const/16 v0, 0x12

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_5
    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_6
    const/4 v5, 0x4

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_7
    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_8
    const/16 v0, 0x10

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_9
    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    goto :goto_12

    :pswitch_a
    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    const-string v5, "failed to read cell-align"

    invoke-static {v9, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_12
    if-eqz v6, :cond_12

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    goto/16 :goto_7

    :cond_12
    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1d

    :pswitch_b
    const/16 v5, 0x8

    new-array v14, v5, [F

    :try_start_7
    const-string v0, "positions"

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/16 v15, 0x8

    if-ne v5, v15, :cond_13

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v15, :cond_14

    aget-object v17, v0, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "positions for quad must be defined as comma separated 8 floats"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v0

    invoke-static {v9, v13, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    new-instance v0, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    if-eqz v6, :cond_15

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    move-object v13, v5

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v13, 0x0

    goto/16 :goto_6

    :pswitch_c
    :try_start_8
    const-string v0, "src"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    const/4 v5, 0x0

    :try_start_9
    invoke-static {v12, v0, v5}, Lcom/prineside/tdi2/ui/actors/WebView;->F(Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    const-string v14, "?"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :try_start_a
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_14

    :catch_7
    :try_start_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Config;->OPTIONAL_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    :goto_14
    const-string v14, "/"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    const-string v14, "http://"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, "https://"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    if-eqz v14, :cond_18

    goto :goto_16

    :cond_18
    :try_start_c
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_15

    :catch_8
    :try_start_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawable "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    :goto_15
    if-eqz v0, :cond_1a

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_17

    :cond_19
    :goto_16
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v0}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :cond_1a
    :goto_17
    if-eqz v6, :cond_1b

    :try_start_e
    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    goto :goto_18

    :cond_1b
    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object v0, v5

    :goto_18
    move-object/from16 v21, v13

    move-object v13, v0

    move-object/from16 v0, v21

    goto/16 :goto_6

    :catch_9
    move-exception v0

    move-object/from16 v21, v13

    move-object v13, v0

    move-object/from16 v0, v21

    goto :goto_1a

    :cond_1c
    :try_start_f
    const-string v0, "img has no src"

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    move-object v0, v5

    move-object v13, v0

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto :goto_19

    :catch_b
    move-exception v0

    const/4 v5, 0x0

    :goto_19
    move-object v13, v0

    move-object v0, v5

    :goto_1a
    const-string v14, "failed to load img"

    invoke-static {v9, v14, v13}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v0

    move-object v15, v5

    goto/16 :goto_8

    :pswitch_d
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz v6, :cond_1d

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    goto :goto_1b

    :cond_1d
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move-object v14, v5

    :goto_1b
    const-string v15, "data"

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v0, v12, v15}, Lcom/prineside/tdi2/ui/actors/WebView;->E(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v1, v0, v12, v7}, Lcom/prineside/tdi2/ui/actors/WebView;->J(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;)V

    move-object v15, v14

    move-object v14, v0

    goto :goto_1d

    :pswitch_e
    const/4 v13, 0x0

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_1f
    :goto_1c
    move-object v14, v5

    move-object v15, v14

    :goto_1d
    const-string v5, "failed to read width"

    const-string v13, "size"

    const-string v10, "height"

    const-string v2, "width"

    if-eqz v14, :cond_27

    const-string v0, "click"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    :try_start_10
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-static {v12, v0, v4}, Lcom/prineside/tdi2/ui/actors/WebView;->F(Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "target"

    invoke-static {v12, v3, v4}, Lcom/prineside/tdi2/ui/actors/WebView;->F(Lcom/badlogic/gdx/utils/XmlReader$Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    move-object/from16 v17, v4

    :try_start_11
    new-instance v4, Lcom/prineside/tdi2/ui/actors/WebView$1;

    invoke-direct {v4, v1, v0, v3}, Lcom/prineside/tdi2/ui/actors/WebView$1;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_1f

    :catch_c
    move-exception v0

    goto :goto_1e

    :catch_d
    move-exception v0

    move-object/from16 v17, v4

    :goto_1e
    const-string v3, "failed to read click"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_20
    move-object/from16 v17, v4

    :goto_1f
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_12
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_20

    :catch_e
    move-exception v0

    invoke-static {v9, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_20
    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_13
    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_21

    :catch_f
    move-exception v0

    const-string v3, "failed to read height"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_21
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :try_start_14
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v14, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_22

    :catch_10
    move-exception v0

    const-string v3, "failed to read size"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_22
    invoke-static {v12}, Lcom/prineside/tdi2/ui/actors/WebView;->I(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "hover-color"

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :try_start_15
    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/ui/actors/WebView;->H(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/actors/WebView$2;

    invoke-direct {v4, v1, v14, v3, v0}, Lcom/prineside/tdi2/ui/actors/WebView$2;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_23

    :catch_11
    move-exception v0

    const-string v3, "failed to read x"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    :goto_23
    const-string v0, "x"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :try_start_16
    const-string v0, "x"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_24

    :catch_12
    move-exception v0

    const-string v3, "failed to read x"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_24
    const-string v0, "y"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_17
    const-string v0, "y"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_25

    :catch_13
    move-exception v0

    const-string v3, "failed to read y"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_25
    const-string v0, "untouchable"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    goto :goto_26

    :cond_27
    move-object/from16 v17, v4

    :cond_28
    :goto_26
    if-eqz v15, :cond_40

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->hasActor()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "fill-x"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_29
    const-string v0, "fill-y"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2a
    const-string v0, "expand-x"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2b
    const-string v0, "expand-y"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2c
    const-string v0, "grow-x"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2d
    const-string v0, "grow-y"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->growY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2e
    const-string v0, "pad-left"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_18
    const-string v0, "pad-left"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_27

    :catch_14
    move-exception v0

    const-string v3, "failed to read pad-left"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_27
    const-string v0, "pad-right"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    :try_start_19
    const-string v0, "pad-right"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_28

    :catch_15
    move-exception v0

    const-string v3, "failed to read pad-right"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_28
    const-string v0, "pad-top"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    :try_start_1a
    const-string v0, "pad-top"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_29

    :catch_16
    move-exception v0

    const-string v3, "failed to read pad-top"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_29
    const-string v0, "pad-bottom"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_1b
    const-string v0, "pad-bottom"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_2a

    :catch_17
    move-exception v0

    const-string v3, "failed to read pad-bottom"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    :goto_2a
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_1c
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_2b

    :catch_18
    move-exception v0

    invoke-static {v9, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_2b
    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :try_start_1d
    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19

    goto :goto_2c

    :catch_19
    move-exception v0

    const-string v3, "failed to read height"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    :goto_2c
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    :try_start_1e
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_2d

    :catch_1a
    move-exception v0

    const-string v3, "failed to read size"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_2d
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const-string v0, "align"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :try_start_1f
    const-string v0, "align"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x514d33ab

    if-eq v3, v4, :cond_38

    const v4, 0x32a007

    if-eq v3, v4, :cond_37

    const v4, 0x677c21c

    if-eq v3, v4, :cond_36

    goto :goto_2e

    :cond_36
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_2f

    :cond_37
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    goto :goto_2f

    :cond_38
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x2

    goto :goto_2f

    :cond_39
    :goto_2e
    const/4 v0, -0x1

    :goto_2f
    if-eqz v0, :cond_3c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3a

    goto :goto_30

    :cond_3a
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_30

    :cond_3b
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_30

    :cond_3c
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1b

    goto :goto_30

    :catch_1b
    move-exception v0

    const-string v3, "failed to read cell-align"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_30
    const-string v0, "colspan"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :try_start_20
    const-string v0, "colspan"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception v0

    const-string v3, "failed to read colspan"

    invoke-static {v9, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_31
    const-string v0, "debug"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    :cond_3f
    instance-of v0, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_40

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_40
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_41
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_5
        0x18491 -> :sswitch_4
        0x197c3 -> :sswitch_3
        0x352147 -> :sswitch_2
        0x61f7ef4 -> :sswitch_1
        0x6903bce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x644d5f2e -> :sswitch_e
        -0x527265d5 -> :sswitch_d
        -0x514d33ab -> :sswitch_c
        -0x43f4dd04 -> :sswitch_b
        -0x3a506239 -> :sswitch_a
        -0x2508254f -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public addListener(Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public copyCookies(Lcom/prineside/tdi2/ui/actors/WebView;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->putAll(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    return-void
.end method

.method public loadPage(Ljava/lang/String;)V
    .locals 5

    const-string v0, "height"

    const-string v1, "width"

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugDetailedMode()Z

    move-result v2

    const-string v3, "WebView"

    if-eqz v2, :cond_0

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    const/4 v4, 0x0

    iput v4, p0, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    iput v4, p0, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "failed to size of body"

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/prineside/tdi2/ui/actors/WebView$1;)V

    invoke-virtual {p0, p0, v2, v0}, Lcom/prineside/tdi2/ui/actors/WebView;->J(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "failed to load page"

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/WebView;->stopCurrentRequest()V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    monitor-enter p3

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "tdi2-locale"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "tdi2-platform"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "tdi2-build"

    const-string v3, "184"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getSignInStatus()Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "tdi2-session"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "tdi2-session"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v6, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/WebView;->y0:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v5, v5, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-eq v4, v5, :cond_3

    const-string v5, "; "

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v2, "Cookie"

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/prineside/tdi2/ui/actors/WebView;->G(Lcom/badlogic/gdx/Net$HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v2, :cond_5

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    aget-object v1, v1, v3

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->urlLoadStart(Lcom/badlogic/gdx/Net$HttpRequest;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/WebView$3;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/prineside/tdi2/ui/actors/WebView$3;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->x0:Lcom/badlogic/gdx/Net$HttpRequest;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->z0:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public stopCurrentRequest()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->x0:Lcom/badlogic/gdx/Net$HttpRequest;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView;->x0:Lcom/badlogic/gdx/Net$HttpRequest;

    :cond_0
    return-void
.end method
