.class public final Lr4/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:J

.field public final d:Lr4/yu3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lr4/yu3;IJLr4/t4;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;",
            "Lr4/yu3;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r4;->a:Ljava/util/List;

    iput-object p2, p0, Lr4/r4;->d:Lr4/yu3;

    iput p3, p0, Lr4/r4;->b:I

    iput-wide p4, p0, Lr4/r4;->c:J

    return-void
.end method

.method public static synthetic a(Lr4/r4;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr4/r4;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lr4/r4;)I
    .locals 0

    iget p0, p0, Lr4/r4;->b:I

    return p0
.end method

.method public static synthetic c(Lr4/r4;)J
    .locals 2

    iget-wide v0, p0, Lr4/r4;->c:J

    return-wide v0
.end method

.method public static synthetic d(Lr4/r4;)Lr4/yu3;
    .locals 0

    iget-object p0, p0, Lr4/r4;->d:Lr4/yu3;

    return-object p0
.end method
