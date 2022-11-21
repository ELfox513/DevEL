.class public Ln1/u$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln1/u$f;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Ln1/u$f;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln1/u$f;->a:I

    return v0
.end method
