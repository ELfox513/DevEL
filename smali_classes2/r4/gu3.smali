.class public final Lr4/gu3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/j44;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lr4/j44;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gu3;->a:Lr4/j44;

    iput-object p2, p0, Lr4/gu3;->b:[Z

    iget p1, p1, Lr4/j44;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lr4/gu3;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lr4/gu3;->d:[Z

    return-void
.end method
