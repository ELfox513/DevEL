.class public final synthetic Ln7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/b;

.field public final synthetic b:Lj5/i;

.field public final synthetic c:Lj5/i;

.field public final synthetic d:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/b;Lj5/i;Lj5/i;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/g;->a:Lcom/google/firebase/remoteconfig/internal/b;

    iput-object p2, p0, Ln7/g;->b:Lj5/i;

    iput-object p3, p0, Ln7/g;->c:Lj5/i;

    iput-object p4, p0, Ln7/g;->d:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ln7/g;->a:Lcom/google/firebase/remoteconfig/internal/b;

    iget-object v1, p0, Ln7/g;->b:Lj5/i;

    iget-object v2, p0, Ln7/g;->c:Lj5/i;

    iget-object v3, p0, Ln7/g;->d:Ljava/util/Date;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/remoteconfig/internal/b;->a(Lcom/google/firebase/remoteconfig/internal/b;Lj5/i;Lj5/i;Ljava/util/Date;Lj5/i;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
