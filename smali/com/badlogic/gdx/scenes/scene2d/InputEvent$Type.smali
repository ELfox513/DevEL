.class public final enum Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "touchDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v3, "touchUp"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v5, "touchDragged"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v7, "mouseMoved"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v9, "enter"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v11, "exit"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v13, "scrolled"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v15, "keyDown"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v14, "keyUp"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v12, "keyTyped"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->a:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->a:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method
