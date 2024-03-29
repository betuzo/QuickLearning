//
//  QuickLearningService.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "QuickLearningService.h"

@implementation QuickLearningService

static NSArray * usuario = nil;
static NSArray * horarioUsuario = nil;
static NSArray * seccInfo = nil;
static NSArray * nivelesUsuario = nil;
static NSArray * pagosUsuario = nil;
static NSArray * sucursales = nil;
static NSArray * avanceAprendizaje = nil;

+ (NSArray *) usuario
{
    return usuario;
}

+ (NSArray *) horarioUsuario
{
    return horarioUsuario;
}
+ (NSArray *) seccInfo
{
    return seccInfo;
}
+ (NSArray *) nivelesUsuario
{
    return nivelesUsuario;
}
+ (NSArray *) pagosUsuario
{
    return pagosUsuario;
}
+ (NSArray *) sucursales
{
    return sucursales;
}
+ (NSArray *) avanceAprendizaje
{
    return avanceAprendizaje;
}

+ (void)initializeDatosTest
{
    usuario = [[NSArray alloc] initWithObjects:
               @"QLA001",
               @"carlosivan",
               @"Carlos Ivan",
               @"Vazquez Cruz",
               @"carlos.ivan@geasys.com",
               @"01/01/1980",
               @"Regular",
               nil];
    
    sucursales = [[NSArray alloc] initWithObjects:
                  [[NSArray alloc] initWithObjects:
                   @"QLS001", @"Zona Rosa", @"Liverpool 143 Int. 102 y 103", @"55896300", @"zonarosa@quicklearning.com", [NSNumber numberWithDouble:19.424213], [NSNumber numberWithDouble:-99.164464],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS002", @"Polanco", @"Gral. Mariano Escobedo No. 446", @"55896300", @"polanco@quicklearning.com", [NSNumber numberWithDouble:19.433916], [NSNumber numberWithDouble:-99.181942],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS003", @"Cancun", @"Av. Carlos J. Nader Super Manzana 2", @"66558822", @"cancun@quicklearning.com", [NSNumber numberWithDouble:21.165914], [NSNumber numberWithDouble:-86.824125],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS004", @"Napoles", @"Insurgentes Sur No. 585", @"55896300", @"napoles@quicklearning.com", [NSNumber numberWithDouble:19.398217], [NSNumber numberWithDouble:-99.171213],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS005", @"Cumbres", @"Av. Gonzalitos Norte No. 916", @"78899885", @"cumbres@quicklearning.com", [NSNumber numberWithDouble:25.698221], [NSNumber numberWithDouble:-100.351535],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS006", @"San Luis Potosi", @"Av. Venustiano Carranza No. 2315", @"44996633", @"sanluispotosi@quicklearning.com", [NSNumber numberWithDouble:22.148516], [NSNumber numberWithDouble:-101.011321],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS007", @"Arlington", @"2801 Eeast Division, Suite 104", @"11125541", @"arlington@quicklearning.com", [NSNumber numberWithDouble:32.744728], [NSNumber numberWithDouble:-97.059896],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS008", @"Phoenix", @"5814 W. Camelback Rd. 85301", @"88554466", @"phoenix@quicklearning.com", [NSNumber numberWithDouble:33.50969], [NSNumber numberWithDouble:-112.184452],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS009", @"Las Vegas", @"320 N. Nellis Blvd., Ste. 6", @"33885544", @"lasvegas@quicklearning.com", [NSNumber numberWithDouble:36.164518], [NSNumber numberWithDouble:-115.060753], nil],
                nil];
    
    horarioUsuario = [[NSArray alloc] initWithObjects:
               @"14:00:00",
               @"15:30:00",
               nil];
    
    seccInfo = [[NSArray alloc] initWithObjects:
               @"Configuracion",
               @"Pagos",
               @"Mi curso",
               nil];
    
    nivelesUsuario = [[NSArray alloc] initWithObjects:
        [[NSArray alloc] initWithObjects:
            @"QLN001", @"Basico 1", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:12], @"Septiembre", [NSNumber numberWithInt:20110930], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN002", @"Basico 2", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:31], @"Septiembre", [NSNumber numberWithInt:20111025], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN003", @"Basico 3", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:26], @"Octubre", [NSNumber numberWithInt:20111111], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN004", @"Intermedio 1", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:12], @"Noviembre", [NSNumber numberWithInt:20111203], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN005", @"Intermedio 2", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:04], @"Diciembre", [NSNumber numberWithInt:20111228], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN006", @"Intermedio 3", @"Cursado", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:29], @"Diciembre", [NSNumber numberWithInt:20120127], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN007", @"Avanzado 1", @"Cursado", [NSNumber numberWithInt:2012], [NSNumber numberWithInt:28], @"Enero", [NSNumber numberWithInt:20120227], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN008", @"Avanzado 2", @"En curso", [NSNumber numberWithInt:2012], [NSNumber numberWithInt:27], @"Febrero", [NSNumber numberWithInt:0], @"", nil],
                      nil];
    
    pagosUsuario = [[NSArray alloc] initWithObjects:
                    [[NSArray alloc] initWithObjects:
                     @"QLP001", @"Basico 1", @"Abono", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:12], @"Septiembre", [NSNumber numberWithInt:400], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP002", @"Basico 1", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:31], @"Septiembre", [NSNumber numberWithInt:1570], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP003", @"Basico 2", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:16], @"Octubre", [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP004", @"Basico 3", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:9], @"Noviembre", [NSNumber numberWithInt:1970], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP005", @"Intermedio 1", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:12], @"Noviembre", [NSNumber numberWithInt:1970], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP006", @"Intermedio 2", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:4], @"Diciembre", [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP007", @"Intermedio 3", @"Abono", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:29], @"Diciembre", [NSNumber numberWithInt:700], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP008", @"Intermedio 3", @"Final", [NSNumber numberWithInt:2011], [NSNumber numberWithInt:29], @"Diciembre", [NSNumber numberWithInt:1270], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP009", @"Avanzado 1", @"Final", [NSNumber numberWithInt:2012], [NSNumber numberWithInt:28], @"Enero", [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP010", @"Avanzado 2", @"Final", [NSNumber numberWithInt:2012], [NSNumber numberWithInt:27], @"Febrero", [NSNumber numberWithInt:1728], nil],
                    nil];

    avanceAprendizaje = [[NSArray alloc] initWithObjects:
                  [[NSArray alloc] initWithObjects:
                   @"Ejercicios", @"70%", @"80%", @"30%",nil],
                  [[NSArray alloc] initWithObjects:
                   @"Audios", @"70%", @"80%", @"30%",nil],
                  [[NSArray alloc] initWithObjects:
                   @"Videos", @"70%", @"80%", @"30%",nil],
                  [[NSArray alloc] initWithObjects:
                   @"Total", @"70%", @"80%", @"30%",nil],
                  nil];

}

@end
