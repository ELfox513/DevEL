.class public Lr4/n6;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final d:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/n6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/m6;->a:Lr4/d3;

    sput-object v0, Lr4/n6;->d:Lr4/d3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lr4/n6;->a:I

    iput-wide p4, p0, Lr4/n6;->b:J

    return-void
.end method
