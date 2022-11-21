.class public abstract Lx5/o;
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

.method public static a(Lz5/a0;Ljava/lang/String;)Lx5/o;
    .locals 1

    new-instance v0, Lx5/b;

    invoke-direct {v0, p0, p1}, Lx5/b;-><init>(Lz5/a0;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lz5/a0;
.end method

.method public abstract c()Ljava/lang/String;
.end method
