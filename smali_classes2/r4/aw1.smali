.class public final synthetic Lr4/aw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/u;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lr4/u;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/aw1;->a:Lr4/u;

    iput-object p2, p0, Lr4/aw1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/aw1;->a:Lr4/u;

    iget-object v1, p0, Lr4/aw1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    invoke-interface {v0, v1}, Lr4/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
