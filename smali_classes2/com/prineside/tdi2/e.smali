.class public final synthetic Lcom/prineside/tdi2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher;

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/e;->a:Lcom/prineside/tdi2/AndroidLauncher;

    iput-object p2, p0, Lcom/prineside/tdi2/e;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/e;->a:Lcom/prineside/tdi2/AndroidLauncher;

    iget-object v1, p0, Lcom/prineside/tdi2/e;->b:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->g(Lcom/prineside/tdi2/AndroidLauncher;Landroid/graphics/Point;)V

    return-void
.end method
