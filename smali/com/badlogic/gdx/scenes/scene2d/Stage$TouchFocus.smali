.class public final Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchFocus"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public k:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method
