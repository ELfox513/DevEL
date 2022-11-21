.class public final synthetic Ln7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/b;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/f;->a:Lcom/google/firebase/remoteconfig/internal/b;

    iput-wide p2, p0, Ln7/f;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln7/f;->a:Lcom/google/firebase/remoteconfig/internal/b;

    iget-wide v1, p0, Ln7/f;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/b;->b(Lcom/google/firebase/remoteconfig/internal/b;JLj5/i;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
