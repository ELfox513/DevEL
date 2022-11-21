.class public Lm7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/k$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(Lm7/k$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm7/k$b;->a(Lm7/k$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lm7/k;->a:J

    invoke-static {p1}, Lm7/k$b;->b(Lm7/k$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lm7/k;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lm7/k$b;Lm7/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lm7/k;-><init>(Lm7/k$b;)V

    return-void
.end method
