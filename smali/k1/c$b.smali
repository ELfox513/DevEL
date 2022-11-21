.class public Lk1/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk1/c$b;->a:I

    iput p2, p0, Lk1/c$b;->b:I

    iput p3, p0, Lk1/c$b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lk1/c$b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk1/c$b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk1/c$b;->a:I

    return v0
.end method
