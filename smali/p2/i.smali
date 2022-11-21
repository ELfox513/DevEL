.class public abstract Lp2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLi2/m;Li2/h;)Lp2/i;
    .locals 1

    new-instance v0, Lp2/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lp2/b;-><init>(JLi2/m;Li2/h;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Li2/h;
.end method

.method public abstract c()J
.end method

.method public abstract d()Li2/m;
.end method
