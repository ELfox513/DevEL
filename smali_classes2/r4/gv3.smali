.class public final synthetic Lr4/gv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/gv3;

    invoke-direct {v0}, Lr4/gv3;-><init>()V

    sput-object v0, Lr4/gv3;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/e5;

    check-cast p2, Lr4/e5;

    iget p2, p2, Lr4/e5;->h:I

    iget p1, p1, Lr4/e5;->h:I

    sub-int/2addr p2, p1

    return p2
.end method
