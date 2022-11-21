.class public final Lcom/badlogic/gdx/graphics/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Colors;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Colors;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static getColors()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static reset()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "CLEAR"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "BLACK"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "WHITE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "LIGHT_GRAY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "GRAY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "DARK_GRAY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "BLUE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->NAVY:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "NAVY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->ROYAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "ROYAL"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->SLATE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "SLATE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->SKY:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "SKY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "CYAN"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->TEAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "TEAL"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "GREEN"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CHARTREUSE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "CHARTREUSE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->LIME:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "LIME"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->FOREST:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "FOREST"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->OLIVE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "OLIVE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "YELLOW"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GOLD:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "GOLD"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GOLDENROD:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "GOLDENROD"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "ORANGE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BROWN:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "BROWN"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->TAN:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "TAN"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->FIREBRICK:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "FIREBRICK"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "RED"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->SCARLET:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "SCARLET"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CORAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "CORAL"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->SALMON:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "SALMON"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "PINK"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->MAGENTA:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "MAGENTA"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->PURPLE:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "PURPLE"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->VIOLET:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "VIOLET"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->MAROON:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "MAROON"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
