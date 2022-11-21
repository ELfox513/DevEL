.class public final synthetic Lcom/prineside/tdi2/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/z0;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/z0;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    return-void
.end method
