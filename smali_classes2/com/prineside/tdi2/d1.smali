.class public final synthetic Lcom/prineside/tdi2/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic p:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/d1;->a:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    iput-object p2, p0, Lcom/prineside/tdi2/d1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/d1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/d1;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/prineside/tdi2/d1;->p:Lcom/badlogic/gdx/Input$TextInputListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/d1;->a:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    iget-object v1, p0, Lcom/prineside/tdi2/d1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/d1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/prineside/tdi2/d1;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/prineside/tdi2/d1;->p:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->b(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    return-void
.end method
