.class public Lcom/google/firebase/remoteconfig/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/d$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Lm7/k;


# direct methods
.method public constructor <init>(JILm7/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/d;->a:J

    iput p3, p0, Lcom/google/firebase/remoteconfig/internal/d;->b:I

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/d;->c:Lm7/k;

    return-void
.end method

.method public synthetic constructor <init>(JILm7/k;Lcom/google/firebase/remoteconfig/internal/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/remoteconfig/internal/d;-><init>(JILm7/k;)V

    return-void
.end method

.method public static b()Lcom/google/firebase/remoteconfig/internal/d$b;
    .locals 2

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/d$b;-><init>(Lcom/google/firebase/remoteconfig/internal/d$a;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/d;->b:I

    return v0
.end method
