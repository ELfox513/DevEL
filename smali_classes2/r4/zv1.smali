.class public final synthetic Lr4/zv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# static fields
.field public static final a:Lr4/ps2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/zv1;

    invoke-direct {v0}, Lr4/zv1;-><init>()V

    sput-object v0, Lr4/zv1;->a:Lr4/ps2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    const-string p1, ""

    return-object p1
.end method
