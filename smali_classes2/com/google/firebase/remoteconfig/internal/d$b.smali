.class public Lcom/google/firebase/remoteconfig/internal/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Lm7/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/remoteconfig/internal/d;
    .locals 7

    new-instance v6, Lcom/google/firebase/remoteconfig/internal/d;

    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->a:J

    iget v3, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->b:I

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->c:Lm7/k;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/internal/d;-><init>(JILm7/k;Lcom/google/firebase/remoteconfig/internal/d$a;)V

    return-object v6
.end method

.method public b(Lm7/k;)Lcom/google/firebase/remoteconfig/internal/d$b;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->c:Lm7/k;

    return-object p0
.end method

.method public c(I)Lcom/google/firebase/remoteconfig/internal/d$b;
    .locals 0

    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->b:I

    return-object p0
.end method

.method public d(J)Lcom/google/firebase/remoteconfig/internal/d$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/d$b;->a:J

    return-object p0
.end method
