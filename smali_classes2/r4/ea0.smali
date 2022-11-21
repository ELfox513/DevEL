.class public final Lr4/ea0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lb3/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/i0<",
            "Lr4/j80;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb3/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/i0<",
            "Lr4/j80;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr4/p90;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ca0;

    invoke-direct {v0}, Lr4/ca0;-><init>()V

    sput-object v0, Lr4/ea0;->b:Lb3/i0;

    new-instance v0, Lr4/da0;

    invoke-direct {v0}, Lr4/da0;-><init>()V

    sput-object v0, Lr4/ea0;->c:Lb3/i0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lr4/p90;

    sget-object v4, Lr4/ea0;->b:Lb3/i0;

    sget-object v5, Lr4/ea0;->c:Lb3/i0;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lr4/p90;-><init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lb3/i0;Lb3/i0;)V

    iput-object v6, p0, Lr4/ea0;->a:Lr4/p90;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lr4/w90<",
            "TI;>;",
            "Lr4/v90<",
            "TO;>;)",
            "Lr4/t90<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lr4/ia0;

    iget-object v1, p0, Lr4/ea0;->a:Lr4/p90;

    invoke-direct {v0, v1, p1, p2, p3}, Lr4/ia0;-><init>(Lr4/p90;Ljava/lang/String;Lr4/w90;Lr4/v90;)V

    return-object v0
.end method

.method public final b()Lr4/na0;
    .locals 2

    new-instance v0, Lr4/na0;

    iget-object v1, p0, Lr4/ea0;->a:Lr4/p90;

    invoke-direct {v0, v1}, Lr4/na0;-><init>(Lr4/p90;)V

    return-object v0
.end method
