.class public final synthetic Lr4/kf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/kf2;

    invoke-direct {v0}, Lr4/kf2;-><init>()V

    sput-object v0, Lr4/kf2;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Exception;

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lr4/mf2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr4/mf2;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
