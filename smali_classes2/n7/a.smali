.class public final synthetic Ln7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ln7/l;


# direct methods
.method public synthetic constructor <init>(Ln7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/a;->a:Ln7/l;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln7/a;->a:Ln7/l;

    invoke-virtual {v0}, Ln7/l;->d()Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v0

    return-object v0
.end method
