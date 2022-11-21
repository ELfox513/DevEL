.class public Lm7/j;
.super Lm7/g;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lm7/g;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lm7/j;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lm7/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lm7/j;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lm7/j;->a:I

    return v0
.end method
