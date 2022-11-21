.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
.super Lcom/badlogic/gdx/math/Rectangle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugRect"
.end annotation


# static fields
.field public static b:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->b:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    return-void
.end method
