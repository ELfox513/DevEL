.class public final enum Lcom/badlogic/gdx/scenes/scene2d/Touchable;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/scenes/scene2d/Touchable;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v3, "disabled"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v5, "childrenOnly"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->a:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->a:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method
