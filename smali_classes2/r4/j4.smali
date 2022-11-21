.class public final synthetic Lr4/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# static fields
.field public static final a:Lr4/ab;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/j4;

    invoke-direct {v0}, Lr4/j4;-><init>()V

    sput-object v0, Lr4/j4;->a:Lr4/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/u6;

    new-instance v0, Lr4/a5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/a5;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lr4/o3;->c(Ljava/lang/RuntimeException;I)Lr4/o3;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/u6;->H0(Lr4/n6;)V

    return-void
.end method
