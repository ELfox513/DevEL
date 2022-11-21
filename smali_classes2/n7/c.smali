.class public final synthetic Ln7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ln7/e;

.field public final synthetic b:Lcom/google/firebase/remoteconfig/internal/a;


# direct methods
.method public synthetic constructor <init>(Ln7/e;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/c;->a:Ln7/e;

    iput-object p2, p0, Ln7/c;->b:Lcom/google/firebase/remoteconfig/internal/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln7/c;->a:Ln7/e;

    iget-object v1, p0, Ln7/c;->b:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v0, v1}, Ln7/e;->a(Ln7/e;Lcom/google/firebase/remoteconfig/internal/a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
