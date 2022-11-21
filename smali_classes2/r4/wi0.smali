.class public final synthetic Lr4/wi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/wi0;

    invoke-direct {v0}, Lr4/wi0;-><init>()V

    sput-object v0, Lr4/wi0;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    sget-object p1, Lr4/yi0;->m:Ljava/util/List;

    const/4 p1, 0x0

    return-object p1
.end method
