.class public final synthetic Ln7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc4/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lcom/google/firebase/remoteconfig/internal/a;


# direct methods
.method public synthetic constructor <init>(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/j;->a:Lc4/d;

    iput-object p2, p0, Ln7/j;->b:Ljava/lang/String;

    iput-object p3, p0, Ln7/j;->d:Lcom/google/firebase/remoteconfig/internal/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln7/j;->a:Lc4/d;

    iget-object v1, p0, Ln7/j;->b:Ljava/lang/String;

    iget-object v2, p0, Ln7/j;->d:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v0, v1, v2}, Ln7/k;->a(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V

    return-void
.end method
