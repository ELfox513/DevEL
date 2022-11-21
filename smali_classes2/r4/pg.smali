.class public final Lr4/pg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lr4/fh;

.field public b:Lr4/id;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lr4/fh;

    iput-object p1, p0, Lr4/pg;->a:[Lr4/fh;

    const/4 p1, 0x0

    iput p1, p0, Lr4/pg;->d:I

    return-void
.end method
