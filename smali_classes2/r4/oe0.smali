.class public final synthetic Lr4/oe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/em0;


# static fields
.field public static final a:Lr4/em0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/oe0;

    invoke-direct {v0}, Lr4/oe0;-><init>()V

    sput-object v0, Lr4/oe0;->a:Lr4/em0;

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

    invoke-static {p1}, Lr4/su2;->f7(Landroid/os/IBinder;)Lr4/tu2;

    move-result-object p1

    return-object p1
.end method
