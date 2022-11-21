.class public Lm7/h;
.super Lm7/g;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string v0, "Fetch was throttled."

    invoke-direct {p0, v0, p1, p2}, Lm7/h;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lm7/g;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lm7/h;->a:J

    return-void
.end method
