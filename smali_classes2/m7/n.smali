.class public final synthetic Lm7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lm7/p;


# direct methods
.method public synthetic constructor <init>(Lm7/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/n;->a:Lm7/p;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm7/n;->a:Lm7/p;

    invoke-virtual {v0}, Lm7/p;->e()Lm7/e;

    move-result-object v0

    return-object v0
.end method
