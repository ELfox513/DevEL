.class public final Lr4/a43;
.super Lr4/o13;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/o13<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:Lr4/s53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s53<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/a43;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lr4/a43;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lr4/a43;->k:Lr4/s53;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Lr4/o13;-><init>(II)V

    iput-object p1, p0, Lr4/a43;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/a43;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
