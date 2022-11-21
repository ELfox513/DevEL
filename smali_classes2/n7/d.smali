.class public final synthetic Ln7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# instance fields
.field public final synthetic a:Ln7/e;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/firebase/remoteconfig/internal/a;


# direct methods
.method public synthetic constructor <init>(Ln7/e;ZLcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/d;->a:Ln7/e;

    iput-boolean p2, p0, Ln7/d;->b:Z

    iput-object p3, p0, Ln7/d;->c:Lcom/google/firebase/remoteconfig/internal/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lj5/i;
    .locals 3

    iget-object v0, p0, Ln7/d;->a:Ln7/e;

    iget-boolean v1, p0, Ln7/d;->b:Z

    iget-object v2, p0, Ln7/d;->c:Lcom/google/firebase/remoteconfig/internal/a;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Ln7/e;->b(Ln7/e;ZLcom/google/firebase/remoteconfig/internal/a;Ljava/lang/Void;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
